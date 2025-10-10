import 'package:flutter/material.dart';

class Investigator_HomePage extends StatelessWidget {
  const Investigator_HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: const Center(
          child: Text("一般モード"),
        ));
  }
}
