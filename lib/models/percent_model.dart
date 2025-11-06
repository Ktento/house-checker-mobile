// models/percent_model.dart
import 'package:flutter/animation.dart';

class PercentModel {
  final Animation<double> animation;

  PercentModel(this.animation);

  // 現在のパーセント値を整数で返す
  int get percent => animation.value.toInt();
}
