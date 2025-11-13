import 'package:flutter/material.dart';
import '../models/investigator_post_model.dart';
import 'package:latlong2/latlong.dart';

class InvestigatorPostController {
  //総合評価を作成し、送信するレコードを作成
  InvestigationRecord createInvestigationRecord(InvestigationUnit unit,
      BuildingOverview overview, InvestigationContent content) {
    return InvestigationRecord(
        unit: unit,
        overview: overview,
        content: content,
        overallScore: overallScore(content));
  }

  // DamageLevel列挙型への変換ヘルパー
  DamageLevel _parseDamageLevel(String value) {
    switch (value[0].toUpperCase()) {
      case 'A':
        return DamageLevel.A;
      case 'B':
        return DamageLevel.B;
      case 'C':
        return DamageLevel.C;
      default:
        return DamageLevel.C; // デフォルト値
    }
  }



}
