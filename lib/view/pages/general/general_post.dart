import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../../../view_model/location_view_model.dart';
import './post/wooden_research_unit.dart';

class GeneralPost extends StatelessWidget {
  const GeneralPost({super.key});
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
                      builder: (_) => MultiProvider(
                        providers: [
                          ChangeNotifierProvider.value(
                            value: context.read<LocationViewModel>(),
                          ),
                        ],
                        child: const WoodenResearchUnit(),
                      ),
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
