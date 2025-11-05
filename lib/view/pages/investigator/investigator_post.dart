import 'post/wooden/wooden_research_unit.dart';
import 'package:flutter/cupertino.dart';

class InvestigatorPost extends StatelessWidget {
  const InvestigatorPost({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton.filled(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const WoodenResearchUnit(),
                    ),
                  );
                },
                child: Text("木造建築物"),
              ),
              const SizedBox(height: 10),
              CupertinoButton(
                onPressed: null,
                child: const Text('鉄筋建築物'),
              ),
              const SizedBox(height: 10),
              CupertinoButton(
                onPressed: null,
                child: const Text('コンクリート建築物'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
