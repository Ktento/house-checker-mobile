import 'package:flutter/cupertino.dart';

//判定士作業状況のwidget
class WorkStatus extends StatelessWidget {
  const WorkStatus({super.key});

  @override
  Widget build(BuildContext context) {
    final inspectors = [
      {'name': '田中判定士', 'progress': '80%'},
      {'name': '松本判定士', 'progress': '11.9%'},
      {'name': '佐藤判定士', 'progress': '42%'},
      {'name': '高橋判定士', 'progress': '67%'},
      {'name': '中村判定士', 'progress': '25%'},
      {'name': '伊藤判定士', 'progress': '93%'},
    ];

    return Container(
      width: 252,
      height: 316,
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
                '判定士作業状況',
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
            Expanded(
              child: CupertinoScrollbar(
                thickness: 6.0,
                thicknessWhileDragging: 10.0,
                radius: const Radius.circular(34.0),
                radiusWhileDragging: Radius.zero,
                child: ListView.builder(
                    itemCount: inspectors.length,
                    itemBuilder: (context, index) {
                      final inspector = inspectors[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 8),
                        child: Row(
                          children: [
                            Text(
                              inspector['name']!,
                              style: const TextStyle(
                                color: CupertinoColors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              inspector['progress']!,
                              style: const TextStyle(
                                color: CupertinoColors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
