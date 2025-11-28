import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerButton extends StatefulWidget {
  final double width;
  final double height;
  final Color color;
  final Function(XFile?)? onImagePicked;
  final String? imagePath;

  const ImagePickerButton({
    super.key,
    this.width = 40,
    this.height = 40,
    this.color = CupertinoColors.activeBlue,
    this.onImagePicked,
    this.imagePath,
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

  @override
  Widget build(BuildContext context) {
    final displayPath = _image?.path ?? widget.imagePath;
    return CupertinoButton(
      padding: EdgeInsets.all(5),
      color: CupertinoColors.activeBlue,
      child: displayPath != null && displayPath.isNotEmpty
          ? Image.file(
              File(displayPath),
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            )
          : Icon(
              CupertinoIcons.photo_fill,
              color: CupertinoColors.white,
            ),
      onPressed: () async {
        await _pickImage();
      },
    );
  }
}
