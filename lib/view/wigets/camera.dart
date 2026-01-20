import 'package:flutter/cupertino.dart';
import 'package:camera/camera.dart';

class CameraPreviewScreen extends StatefulWidget {
  final CameraDescription camera;
  const CameraPreviewScreen({required this.camera, Key? key}) : super(key: key);

  @override
  State<CameraPreviewScreen> createState() => _CameraPreviewScreenState();
}

class _CameraPreviewScreenState extends State<CameraPreviewScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // カメラのコントローラーを初期化
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // ウィジェットが破棄されるときにコントローラーを破棄
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text('カメラプレビュー')),
      child: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // 初期化が完了したらプレビューを表示
            return CameraPreview(_controller);
          } else {
            // 初期化中は読み込み画面を表示
            return const Center(child: CupertinoActivityIndicator());
          }
        },
      ),
    );
  }
}
