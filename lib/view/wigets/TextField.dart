import 'package:flutter/cupertino.dart';

Widget buildCupertinoTextField({
  required String label,
  required TextEditingController controller,
  bool numeric = false,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,
          style: const TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w500)),
      const SizedBox(height: 4),
      CupertinoTextField(
        controller: controller,
        keyboardType: numeric ? TextInputType.number : TextInputType.text,
        placeholder: '$label を入力',
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        decoration: BoxDecoration(
          color: CupertinoColors.systemGrey6,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      const SizedBox(height: 16),
    ],
  );
}
