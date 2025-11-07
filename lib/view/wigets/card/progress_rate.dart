import 'package:flutter/cupertino.dart';
import '../../../controllers/percent_controller.dart';

class ProgressRate extends StatefulWidget {
  const ProgressRate({super.key});

  @override
  State<ProgressRate> createState() => _ProgressRateState();
}

class _ProgressRateState extends State<ProgressRate>
    with TickerProviderStateMixin {
  //全体の進捗率、危険建物率
  double allprogress = 80;
  double riskprogress = 11.9;
  late List<PercentController> _controller;

  @override
  void initState() {
    super.initState();

    _controller = [
      PercentController(this),
      PercentController(this),
    ];

    // アニメーション開始
    _controller[0].start(to: allprogress);
    _controller[1].start(to: riskprogress);

    // 各アニメーションの変化を監視
    for (var c in _controller) {
      c.animationController.addListener(() {
        if (mounted) setState(() {});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 252,
      height: 100,
      decoration: BoxDecoration(
        color: CupertinoColors.systemBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: CupertinoColors.black,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12, top: 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(children: [
              Text(
                '判定進捗率',
                style: TextStyle(
                  color: CupertinoColors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(CupertinoIcons.graph_square,
                  color: CupertinoColors.black, size: 20),
            ]),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  '全体進捗',
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Text(
                        '${_controller[0].model.percent.toInt()}％',
                        style: TextStyle(
                          color: CupertinoColors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3),
            Row(
              children: [
                Text(
                  '危険建物率',
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Text(
                        '${_controller[1].model.percent.toInt()}％',
                        style: TextStyle(
                          color: CupertinoColors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
