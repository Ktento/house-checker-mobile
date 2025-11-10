import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerButton extends StatefulWidget {
  final double width;
  final double height;
  final Color color;
  final Function(XFile?)? onImagePicked;

  const ImagePickerButton({
    super.key,
    this.width = 40,
    this.height = 40,
    this.color = CupertinoColors.activeBlue,
    this.onImagePicked,
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
    return CupertinoButton(
      padding: EdgeInsets.all(10),
      color: CupertinoColors.activeBlue,
      child: _image != null
          ? Image.file(
              File(_image!.path),
              width: 40,
              height: 40,
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
