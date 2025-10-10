import 'package:flutter/material.dart';

class Jeneral_HomePage extends StatelessWidget {
  const Jeneral_HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: const Center(
          child: Text("一般モード"),
        ));
  }
}
