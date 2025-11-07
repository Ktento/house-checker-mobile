// controllers/percent_controller.dart
import 'package:flutter/material.dart';
import '../models/percent_model.dart';

class PercentController {
  late AnimationController animationController;
  late PercentModel model;

  PercentController(TickerProvider vsync) {
    animationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: vsync,
    );

    final animation = Tween<double>(begin: 0, end: 100).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeOut),
    );

    model = PercentModel(animation);
  }

  void start({double to = 100}) {
    animationController.reset();
    final animation = Tween<double>(begin: 0, end: to).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeOut),
    );
    model = PercentModel(animation);
    animationController.forward();
  }

  void dispose() {
    animationController.dispose();
  }
}
