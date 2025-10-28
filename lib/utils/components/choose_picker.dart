import 'package:flutter/cupertino.dart';

class CupertinoDropdown extends StatefulWidget {
  final List<String> options;
  final String initialValue;
  final ValueChanged<String> onChanged; // 選択時のコールバック

  const CupertinoDropdown({
    super.key,
    required this.options,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  State<CupertinoDropdown> createState() => _CupertinoDropdownState();
}

class _CupertinoDropdownState extends State<CupertinoDropdown> {
  late String selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialValue;
  }

  void _showPicker(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => CupertinoActionSheet(
        actions: widget.options.map((option) {
          return CupertinoActionSheetAction(
            onPressed: () {
              setState(() => selectedValue = option);
              widget.onChanged(option); // 外部に通知
              Navigator.pop(context);
            },
            child: Text(option),
          );
        }).toList(),
        cancelButton: CupertinoActionSheetAction(
          onPressed: () => Navigator.pop(context),
          isDefaultAction: true,
          child: const Text('キャンセル'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: CupertinoColors.systemGrey5,
      onPressed: () => _showPicker(context),
      child: Text(selectedValue),
    );
  }
}
