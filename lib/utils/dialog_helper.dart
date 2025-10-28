import 'package:flutter/cupertino.dart';

class DialogHelper {
  /// Cupertinoスタイルのエラーダイアログを表示
  static void showErrorDialog(BuildContext context, String message) {
    showCupertinoDialog(
      context: context,
      builder: (_) => CupertinoAlertDialog(
        title: const Text('入力エラー'),
        content: Text(message),
        actions: [
          CupertinoDialogAction(
            child: const Text('OK'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
