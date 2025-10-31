// ----------------------
// 調査単位
// ----------------------
class InvestigationUnit {
  final String buildingtype;
  final String number; // 整理番号
  final DateTime date; // 調査日
  final int surveyCount; // 調査回数
  final List<String> investigator; // 調査人氏名
  final List<String> prefecture; // 都道府県
  final List<String> investigatorNumber; //調査人番号

  InvestigationUnit({
    required this.buildingtype,
    required this.date,
    required this.investigator,
    required this.number,
    required this.prefecture,
    required this.surveyCount,
    required this.investigatorNumber,
  });

  Map<String, dynamic> toJson() {
    return {
      'buildingtype': buildingtype,
      'number': number,
      'date': date.toIso8601String(), // DateTime → String
      'surveyCount': surveyCount,
      'investigator': investigator,
      'prefecture': prefecture,
      'investigatorNumber': investigatorNumber,
    };
  }
}

// ----------------------
// 建築物概要
// ----------------------
class BuildingOverview {
  final String buildingName; // 建築物名称
  final String buildingNumber; // 建築物番号
  final String address; // 所在地
  final String mapNumber; // 住宅地図整理番号
  final String buildingUse; // 建築物用途
  final String structure; // 構造
  final int floors; // 階数
  final String scale; // 規模

  BuildingOverview({
    required this.buildingName,
    required this.buildingNumber,
    required this.address,
    required this.mapNumber,
    required this.buildingUse,
    required this.structure,
    required this.floors,
    required this.scale,
  });
  Map<String, dynamic> toJson() {
    return {
      'buildingName': buildingName,
      'buildingNumber': buildingNumber,
      'address': address,
      'mapNumber': mapNumber,
      'buildingUse': buildingUse,
      'structure': structure,
      'floors': floors,
      'scale': scale,
    };
  }
}

// ----------------------
// 調査内容（ABC評価）
// ----------------------
enum DamageLevel { A, B, C } // 三段階評価

class InvestigationContent {
  // --- １.一見して危険と判断される(外観調査) ---
  final int exteriorInspectionScore; // 外観調査点数
  final String? exteriorInspectionRemarks; // 外観調査備考

  // --- ２.隣接建築物・周辺地盤等及び構造躯体に関する危険度 ---
  final DamageLevel adjacentBuildingRisk; // 隣接建築物・周辺地盤の破壊による危険
  final DamageLevel unevenSettlement; // 構造躯体の不同沈下
  final DamageLevel foundationDamage; // 基礎の被害
  final DamageLevel firstFloorTilt; // 建築物の1階の傾斜
  final DamageLevel wallDamage; // 壁の被害
  final DamageLevel corrosionOrTermite; // 腐食・蟻害の有無

  // --- ３.落下危険物・転倒危険物に関する危険度 ---
  final DamageLevel roofTile; // 瓦
  final DamageLevel windowFrame; // 窓枠・窓ガラス
  final DamageLevel exteriorWet; // 外装材（湿式）
  final DamageLevel exteriorDry; // 外装材（乾式）
  final DamageLevel signageAndEquipment; // 看板・機器類
  final DamageLevel outdoorStairs; // 屋外階段
  final DamageLevel others; // その他（ABC評価）
  final String? otherRemarks; // その他の内容（文字列）

  // --- 総合評価 ---
  final String overallExteriorScore; // 外観調査の総合スコア
  final DamageLevel overallStructuralScore; // 建物構造関連の総合スコア
  final DamageLevel overallFallingObjectScore; // 落下物関連の総合スコア

  InvestigationContent({
    required this.adjacentBuildingRisk,
    required this.unevenSettlement,
    required this.foundationDamage,
    required this.firstFloorTilt,
    required this.wallDamage,
    required this.corrosionOrTermite,
    required this.roofTile,
    required this.windowFrame,
    required this.exteriorWet,
    required this.exteriorDry,
    required this.signageAndEquipment,
    required this.outdoorStairs,
    required this.others,
    this.otherRemarks,
    required this.exteriorInspectionScore,
    this.exteriorInspectionRemarks,
    required this.overallExteriorScore,
    required this.overallStructuralScore,
    required this.overallFallingObjectScore,
  });

  Map<String, dynamic> toJson() {
    return {
      'exteriorInspectionScore': exteriorInspectionScore,
      'exteriorInspectionRemarks': exteriorInspectionRemarks,
      'adjacentBuildingRisk': adjacentBuildingRisk.name,
      'unevenSettlement': unevenSettlement.name,
      'foundationDamage': foundationDamage.name,
      'firstFloorTilt': firstFloorTilt.name,
      'wallDamage': wallDamage.name,
      'corrosionOrTermite': corrosionOrTermite.name,
      'roofTile': roofTile.name,
      'windowFrame': windowFrame.name,
      'exteriorWet': exteriorWet.name,
      'exteriorDry': exteriorDry.name,
      'signageAndEquipment': signageAndEquipment.name,
      'outdoorStairs': outdoorStairs.name,
      'others': others.name,
      'otherRemarks': otherRemarks,
      'overallExteriorScore': overallExteriorScore,
      'overallStructuralScore': overallStructuralScore.name,
      'overallFallingObjectScore': overallFallingObjectScore.name,
    };
  }
}

// ----------------------
// 総合判定（赤・黄・緑）
// ----------------------
enum OverallScore { red, yellow, green }

// ----------------------
// 調査レコード全体
// ----------------------
class InvestigationRecord {
  final InvestigationUnit unit;
  final BuildingOverview overview;
  final InvestigationContent content;
  final OverallScore overallScore;

  InvestigationRecord({
    required this.unit,
    required this.overview,
    required this.content,
    required this.overallScore,
  });

  Map<String, dynamic> toJson() {
    return {
      'unit': unit.toJson(),
      'buildingOverview': overview.toJson(),
      'content': content.toJson(),
      'overallscore': overallScore.name,
    };
  }
}
