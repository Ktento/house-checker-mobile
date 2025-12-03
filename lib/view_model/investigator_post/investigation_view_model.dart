import 'package:flutter/foundation.dart';
import 'wooden_view_model.dart';
import 'steelFrame_view_model.dart';

class InvestigationViewModel extends ChangeNotifier {
  final WoodenViewModel wooden = WoodenViewModel();
  final SteelFrameViewModel SteelFrame = SteelFrameViewModel();
}
