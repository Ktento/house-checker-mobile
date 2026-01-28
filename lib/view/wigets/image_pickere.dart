import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerButton extends StatefulWidget {
  final double width;
  final double height;
  final Color color;
  final Function(XFile?)? onImagePicked;
  final String? imagePath;
  final String? firebaseUrl;

  const ImagePickerButton({
    super.key,
    this.width = 40,
    this.height = 40,
    this.color = CupertinoColors.activeBlue,
    this.onImagePicked,
    this.imagePath,
    this.firebaseUrl,
  });

  @override
  State<ImagePickerButton> createState() => _ImagePickerButtonState();
}

class _ImagePickerButtonState extends State<ImagePickerButton> {
  XFile? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final picked = await _picker.pickImage(source: ImageSource.gallery);
    if (picked == null) return;
    setState(() => _image = picked);
    if (widget.onImagePicked != null) {
      widget.onImagePicked!(picked);
    }
  }

  /// 画像を全画面表示するメソッド
  void _showImagePreview(BuildContext context, ImageProvider imageProvider) {
    Navigator.of(context).push(
      CupertinoPageRoute(
        fullscreenDialog: true,
        builder: (context) => CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: const Text('画像プレビュー'),
            leading: CupertinoButton(
              padding: EdgeInsets.zero,
              child: const Text('閉じる'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            // ここで画像の再選択（変更）ができるようにする
            trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              child: const Text('変更'),
              onPressed: () async {
                Navigator.of(context).pop(); // プレビューを閉じる
                await _pickImage(); // 画像選択を開く
              },
            ),
          ),
          backgroundColor: CupertinoColors.black,
          child: Center(
            child: InteractiveViewer(
              // ピンチイン・アウトで拡大縮小可能にする
              child: Image(
                image: imageProvider,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // どの画像を表示するか、ImageProviderとして決定する
    ImageProvider? currentImageProvider;

    // 1. 新しくユーザーが画像を選んだ場合
    if (_image != null) {
      currentImageProvider = FileImage(File(_image!.path));
    }
    // 2. ローカルに保存されたパスがある場合
    else if (widget.imagePath != null && widget.imagePath!.isNotEmpty) {
      currentImageProvider = FileImage(File(widget.imagePath!));
    }
    // 3. FirebaseのURLがある場合
    else if (widget.firebaseUrl != null && widget.firebaseUrl!.isNotEmpty) {
      currentImageProvider = NetworkImage(widget.firebaseUrl!);
    }

    // 表示用ウィジェットの作成
    Widget displayContent;
    if (currentImageProvider != null) {
      displayContent = Image(
        image: currentImageProvider,
        width: 24,
        height: 24,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return const Icon(CupertinoIcons.exclamationmark_circle,
              color: CupertinoColors.white);
        },
      );
    } else {
      displayContent = const Icon(
        CupertinoIcons.photo_fill,
        color: CupertinoColors.white,
      );
    }

    return CupertinoButton(
      padding: const EdgeInsets.all(5),
      color: widget.color,
      // ボタンを押した時の挙動
      onPressed: () async {
        if (currentImageProvider != null) {
          // 画像がある場合はプレビューを表示
          _showImagePreview(context, currentImageProvider);
        } else {
          // 画像がない場合は選択画面を開く
          await _pickImage();
        }
      },
      child: displayContent,
    );
  }
}
