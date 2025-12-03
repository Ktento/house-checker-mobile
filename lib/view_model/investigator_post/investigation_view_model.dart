import 'package:flutter/foundation.dart';
import 'wooden_view_model.dart';
import 'rebar_view_model.dart';

class InvestigationViewModel extends ChangeNotifier {
  final WoodenViewModel wooden = WoodenViewModel();
  final RebarViewModel rebar = RebarViewModel();
}
