import 'package:flutter/cupertino.dart';

class WorkStatus extends StatefulWidget {
  const WorkStatus({super.key});

  @override
  State<WorkStatus> createState() => _WorkStatusState();
}

class _WorkStatusState extends State<WorkStatus> {
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
        color: const Color.fromARGB(255, 112, 112, 219),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 48, 48, 48),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
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
                  color: CupertinoColors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(CupertinoIcons.graph_square,
                  color: CupertinoColors.white, size: 20),
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
                                color: CupertinoColors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              inspector['progress']!,
                              style: const TextStyle(
                                color: CupertinoColors.white,
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
