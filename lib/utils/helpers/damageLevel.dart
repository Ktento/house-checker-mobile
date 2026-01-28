import '../../models/investigator_model.dart';

//StringのDamageLevelを変換
DamageLevel? stringToDamageLevel(String? value) {
  if (value == null || value.isEmpty) return null;
  if (value.startsWith('A')) return DamageLevel.A;
  if (value.startsWith('B')) return DamageLevel.B;
  if (value.startsWith('C')) return DamageLevel.C;
  if (value == "DamageLevel.A") return DamageLevel.A;
  return null;
}

//外観調査のStringの値を変換
int parseExteriorScore(String value) {
  if (value.isEmpty) return 5;
  final firstChar = value.trim().substring(0, 1);
  return int.tryParse(firstChar) ?? 5;
}

// 隣接建築物・周辺地盤の危険
String adjacentBuildingRiskToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.危険無し';
    case "B":
      return 'B.不明確';
    case "C":
      return 'C.危険あり';
    default:
      return '未入力';
  }
}

// 構造躯体の不同沈下
String unevenSettlementToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.無し又は軽微';
    case "B":
      return 'B.著しい床、屋根の落ち込み、浮き上がり';
    case "C":
      return 'C.小屋組みの破壊、床全体の沈下';
    default:
      return '未入力';
  }
}

// 基礎の被害
String foundationDamageToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.無被害';
    case "B":
      return 'B.部分的';
    case "C":
      return 'C.著しい(被害あり)';
    default:
      return '未入力';
  }
}

// 建築物の1階の傾斜
String firstFloorTiltToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.1/60以下';
    case "B":
      return 'B.1/60～1/20';
    case "C":
      return 'C.1/20超';
    default:
      return '未入力';
  }
}

// 壁の被害
String wallDamageToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.軽微なひび割れ';
    case "B":
      return 'B.大きな亀裂、剥離';
    case "C":
      return 'C.落下の危険有り';
    default:
      return '未入力';
  }
}

// 腐食・蟻害の有無
String corrosionOrTermiteToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.ほとんど無し';
    case "B":
      return 'B.一部の断面欠損';
    case "C":
      return 'C.著しい断面欠損';
    default:
      return '未入力';
  }
}

// 瓦・屋根や看板類
String roofTileToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.ほとんど無被害';
    case "B":
      return 'B.著しいずれ';
    case "C":
      return 'C.全面的にずれ、破損';
    default:
      return '未入力';
  }
}

// 窓枠・窓ガラス
String windowFrameToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.ほとんど無被害';
    case "B":
      return 'B.歪み、ひび割れ';
    case "C":
      return 'C.落下の危険有';
    default:
      return '未入力';
  }
}

// 外装材（湿式）
String exteriorWetToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.ほとんど無被害';
    case "B":
      return 'B.部分的なひび割れ、隙間';
    case "C":
      return 'C.顕著なひび割れ、剥離';
    default:
      return '未入力';
  }
}

// 外装材（乾式）
String exteriorDryToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.目地の亀裂程度';
    case "B":
      return 'B.板に隙間がみられる';
    case "C":
      return 'C.顕著な目地ずれ、板破損';
    default:
      return '未入力';
  }
}

// 看板・機器類
String signageAndEquipmentToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.傾斜無し';
    case "B":
      return 'B.わずかな傾斜';
    case "C":
      return 'C.落下の危険有り';
    default:
      return '未入力';
  }
}

// 屋外階段
String outdoorStairsToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.傾斜なし';
    case "B":
      return 'B.わずかな傾斜';
    case "C":
      return 'C.明瞭な傾斜';
    default:
      return '未入力';
  }
}

// その他
String othersToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.安全';
    case "B":
      return 'B.要注意';
    case "C":
      return 'C.危険';
    default:
      return '未入力';
  }
}

// 鉄筋・コンクリート関連のラベル関数
String exteriorInspectionScoreToLabel(String value) {
  switch (value) {
    case "1":
      return '1.建物全体又は一部の崩壊・落階';
    case "2":
      return '2.基礎の著しい破壊、上部構造との著しいずれ';
    case "3":
      return '3.建物全体又は一部の著しい傾斜';
    case "4":
      return '4.その他';
    case "5":
      return '5.なし';
    default:
      return '5.なし';
  }
}

String upperFloorLe1ToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.1/100以下';
    case "B":
      return 'B.1/100～1/30';
    case "C":
      return 'C.1/30超';
    default:
      return '未入力';
  }
}

String upperFloorLe2ToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.1/200以下';
    case "B":
      return 'B.1/200～1/50';
    case "C":
      return 'C.1/50超';
    default:
      return '未入力';
  }
}

String hasBucklingToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.無し';
    case "B":
      return 'B.局部座屈あり';
    case "C":
      return 'C.全体座屈あるいは著しい局部座屈';
    default:
      return '未入力';
  }
}

String bracingBreakRateToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.20%以下';
    case "B":
      return 'B.20%～50%';
    case "C":
      return 'C.50%超';
    default:
      return '未入力';
  }
}

String jointFailureToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.無し';
    case "B":
      return 'B.一部破断あるいは亀裂';
    case "C":
      return 'C.20%以上の破断';
    default:
      return '未入力';
  }
}

String columnBaseDamageToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.無し';
    case "B":
      return 'B.部分的';
    case "C":
      return 'C.著しい';
    default:
      return '未入力';
  }
}

String corrosionToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.ほとんど無し';
    case "B":
      return 'B.各所に著しい錆';
    case "C":
      return 'C.孔所が各所に見られる';
    default:
      return '未入力';
  }
}

String roofOrSignboardRiskToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.ほとんど無被害';
    case "B":
      return 'B.著しいずれ';
    case "C":
      return 'C.全面的にずれ、破損';
    default:
      return '未入力';
  }
}

// 損傷度Ⅲ以上の損傷部材の有無
String hasSevereDamageMembersToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.無し';
    case "B":
      return 'B.あり';
    default:
      return '未入力';
  }
}

// 地盤破壊による建物全体の傾斜
String groundFailureInclinationToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.0.2m以下';
    case "B":
      return 'B.0.2m～1.0m';
    case "C":
      return 'C.1.0m超';
    default:
      return '未入力';
  }
}

// 損傷度Ⅴの柱本数
String percentColumnsLevel5ToLabel(String? level) {
  switch (level) {
    case "A":
      return "A.1%以下";
    case "B":
      return "B.1%〜10%";
    case "C":
      return "C.10%超";
    default:
      return '未入力';
  }
}

// 損傷度Ⅳの柱本数
String percentColumnsLevel4ToLabel(String? level) {
  switch (level) {
    case "A":
      return "A.10%以下";
    case "B":
      return "B.10%〜20%";
    case "C":
      return "C.20%超";
    default:
      return '未入力';
  }
}

// 外装材(モルタル・タイル・石貼り等)
String exteriorMaterialMortarTileStoneToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.ほとんど無被害';
    case "B":
      return 'B.部分的なひび割れ、隙間';
    case "C":
      return 'C.顕著なひび割れ、剥離';
    default:
      return '未入力';
  }
}

// 外装材(ALC板・PC板・金属・ブロック等)
String exteriorMaterialALCPCMetalBlockToLabel(String? level) {
  switch (level) {
    case "A":
      return 'A.目地の亀裂程度';
    case "B":
      return 'B.板に隙間がみられる';
    case "C":
      return 'C.顕著な目地ずれ、板破損';
    default:
      return '未入力';
  }
}
