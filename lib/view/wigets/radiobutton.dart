import 'package:flutter/cupertino.dart';
import 'package:house_check_mobile/models/investigator_model.dart';
import 'package:house_check_mobile/view/wigets/image_pickere.dart';

// --- ラジオボタンスタイル（選択肢常時表示） ---
Widget buildRadioGroup({
  required String title,
  required TextEditingController controller,
  required List<String> options,
  Function(String path)? onImagePicked,
  final List<ImagePaths>? savedImage,
}) {
  String? path;
  String? firebaseUrl;
  // 初期値が空の場合の安全策
  switch (controller.text) {
    case "DamageLevel.A":
      controller.text = options[0];
      break;
    case "DamageLevel.B":
      controller.text = options[1];
      break;
    case "DamageLevel.C":
      controller.text = options[2];
      break;
    default:
      break;
  }
  if (savedImage != null && savedImage.isNotEmpty) {
    final image = savedImage[0];
    // firebaseUrlがある場合は firebaseUrl変数に入れる
    if (image.firebaseUrl.isNotEmpty) {
      firebaseUrl = image.firebaseUrl;
    }
    // そうでなければ path (localPath) に入れる
    else {
      path = image.localPath;
    }
  }
  return CupertinoFormSection.insetGrouped(
    // ヘッダー部分に「質問タイトル」と「カメラボタン」を配置
    header: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: Text(title, style: const TextStyle(fontSize: 15))),
        if (onImagePicked != null)
          ImagePickerButton(
            onImagePicked: (file) {
              if (file != null) {
                onImagePicked(file.path);
              }
            },
            //モデルに保存された画像があればその保存先を渡し表示
            imagePath: path,
            firebaseUrl: firebaseUrl,
          ),
      ],
    ),
    children: options.map((option) {
      return ValueListenableBuilder<TextEditingValue>(
        valueListenable: controller,
        builder: (context, value, child) {
          // 文字列比較で選択状態を判定
          final isSelected = value.text == option ||
              (value.text.isNotEmpty &&
                  option.startsWith(value.text.substring(0, 1)));

          return GestureDetector(
            onTap: () {
              controller.text = option;
            },
            behavior: HitTestBehavior.opaque, // 行全体をタップ可能にする
            child: CupertinoFormRow(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Row(
                children: [
                  // 選択肢テキスト
                  Expanded(
                    child: Text(
                      option,
                      style: TextStyle(
                        fontSize: 16,
                        color: isSelected
                            ? CupertinoColors.activeBlue
                            : CupertinoColors.label,
                        fontWeight:
                            isSelected ? FontWeight.w600 : FontWeight.normal,
                      ),
                    ),
                  ),
                  // チェックマーク
                  if (isSelected)
                    const Icon(CupertinoIcons.checkmark,
                        color: CupertinoColors.activeBlue, size: 20),
                ],
              ),
            ),
          );
        },
      );
    }).toList(),
  );
}
