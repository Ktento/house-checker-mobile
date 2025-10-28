import 'package:flutter/cupertino.dart';
import '../../../../controllers/investigator_post_controller.dart';

class WoodenCheck extends StatefulWidget {
  const WoodenCheck({super.key});

  @override
  State<WoodenCheck> createState() => _WoodenCheckState();
}

class _WoodenCheckState extends State<WoodenCheck> {
  final _formKey = GlobalKey<FormState>();
  final controller = InvestigatorPostController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('結果表示'),
        automaticallyImplyLeading: false,
      ),
      child: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  '調査内容の確認画面です。',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 30),
                CupertinoButton.filled(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: const Text('戻る'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
