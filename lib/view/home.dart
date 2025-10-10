import 'package:flutter/material.dart';
import 'general/general_home.dart';
import 'investigator/investigator_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // 横方向中央
          crossAxisAlignment: CrossAxisAlignment.center, // Row内縦方向中央
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("一般モード"),
              ElevatedButton.icon(
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: const Text('Button 1'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(150, 60)),
                onPressed: () {
                  //一般モードに遷移
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Jeneral_HomePage()),
                  );
                },
              ),
            ]),
            const SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("応急危険度判定モード"),
                ElevatedButton.icon(
                  icon: const Icon(
                    Icons.engineering,
                    color: Colors.white,
                  ),
                  label: const Text('Button 2'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(150, 60),
                  ),
                  onPressed: () {
                    //応急危険度判定モードに遷移
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Investigator_HomePage()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
