import 'post/wooden/wooden_research_unit.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../../../view_model/location_view_model.dart';
import 'post/steelFrame/steelFrame_research_unit.dart';
import 'post/rc/reabar_research_unit.dart';
import '../../wigets/camera.dart';
import 'package:camera/camera.dart';

class InvestigatorPost extends StatefulWidget {
  const InvestigatorPost({super.key});

  @override
  State<InvestigatorPost> createState() => _InvestigatorPostState();
}

class _InvestigatorPostState extends State<InvestigatorPost> {
  CameraDescription? _firstCamera; // カメラを保持する変数

  @override
  void initState() {
    super.initState();
    _setupCamera(); // 初期化時にカメラを取得
  }

  // カメラを取得するメソッド
  Future<void> _setupCamera() async {
    try {
      final cameras = await availableCameras();
      if (cameras.isNotEmpty) {
        setState(() {
          _firstCamera = cameras.first; // 背面カメラ（通常は最初）を取得
        });
      }
    } catch (e) {
      print("カメラの取得に失敗しました: $e");
    }
  }

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
                        child: const SteelFrameResearchUnit(),
                      ),
                    ),
                  );
                },
                child: const Text('鉄筋建築物'),
              ),
              const SizedBox(height: 10),
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
                        child: const RebarResearchUnit(),
                      ),
                    ),
                  );
                },
                child: const Text('コンクリート建築物'),
              ),
              CupertinoButton.filled(
                child: const Text('カメラを起動'),
                onPressed: () {
                  // カメラ画面へ遷移
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) =>
                          CameraPreviewScreen(camera: _firstCamera!),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
