import '../../models/investigator_model.dart';

DamageLevel stringToDamageLevel(String value) {
  if (value.startsWith('A')) return DamageLevel.A;
  if (value.startsWith('B')) return DamageLevel.B;
  if (value.startsWith('C')) return DamageLevel.C;
  throw Exception('Invalid DamageLevel string: $value');
}

// 隣接建築物・周辺地盤の危険
String adjacentBuildingRiskToLabel(String level) {
  switch (level) {
    case "DamageLevel.A":
      return 'A.危険無し';
    case "DamageLevel.B":
      return 'B.不明確';
    case "DamageLevel.C":
      return 'C.危険あり';
    default:
      return 'A.危険無し';
  }
}

// 構造躯体の不同沈下
String unevenSettlementToLabel(String level) {
  switch (level) {
    case "DamageLevel.A":
      return 'A.無し又は軽微';
    case "DamageLevel.B":
      return 'B.著しい床、屋根の落ち込み、浮き上がり';
    case "DamageLevel.C":
      return 'C.小屋組みの破壊、床全体の沈下';
    default:
      return 'A.無し又は軽微';
  }
}

// 基礎の被害
String foundationDamageToLabel(String level) {
  switch (level) {
    case "DamageLevel.A":
      return 'A.無被害';
    case "DamageLevel.B":
      return 'B.部分的';
    case "DamageLevel.C":
      return 'C.著しい(被害あり)';
    default:
      return 'A.無被害';
  }
}

// 建築物の1階の傾斜
String firstFloorTiltToLabel(String level) {
  switch (level) {
    case "DamageLevel.A":
      return 'A.1/60以下';
    case "DamageLevel.B":
      return 'B.1/60～1/20';
    case "DamageLevel.C":
      return 'C.1/20超';
    default:
      return 'A.1/60以下';
  }
}

// 壁の被害
String wallDamageToLabel(String level) {
  switch (level) {
    case "DamageLevel.A":
      return 'A.軽微なひび割れ';
    case "DamageLevel.B":
      return 'B.大きな亀裂、剥離';
    case "DamageLevel.C":
      return 'C.落下の危険有り';
    default:
      return 'A.軽微なひび割れ';
  }
}

// 腐食・蟻害の有無
String corrosionOrTermiteToLabel(String level) {
  switch (level) {
    case "DamageLevel.A":
      return 'A.ほとんど無し';
    case "DamageLevel.B":
      return 'B.一部の断面欠損';
    case "DamageLevel.C":
      return 'C.著しい断面欠損';
    default:
      return 'A.ほとんど無し';
  }
}

// 瓦・屋根や看板類
String roofTileToLabel(String level) {
  switch (level) {
    case "DamageLevel.A":
      return 'A.ほとんど無被害';
    case "DamageLevel.B":
      return 'B.著しいずれ';
    case "DamageLevel.C":
      return 'C.全面的にずれ、破損';
    default:
      return 'A.ほとんど無被害';
  }
}

// 窓枠・窓ガラス
String windowFrameToLabel(String level) {
  switch (level) {
    case "DamageLevel.A":
      return 'A.ほとんど無被害';
    case "DamageLevel.B":
      return 'B.歪み、ひび割れ';
    case "DamageLevel.C":
      return 'C.落下の危険有';
    default:
      return 'A.ほとんど無被害';
  }
}

// 外装材（湿式）
String exteriorWetToLabel(String level) {
  switch (level) {
    case "DamageLevel.A":
      return 'A.ほとんど無被害';
    case "DamageLevel.B":
      return 'B.部分的なひび割れ、隙間';
    case "DamageLevel.C":
      return 'C.顕著なひび割れ、剥離';
    default:
      return 'A.ほとんど無被害';
  }
}

// 外装材（乾式）
String exteriorDryToLabel(String level) {
  switch (level) {
    case "DamageLevel.A":
      return 'A.目地の亀裂程度';
    case "DamageLevel.B":
      return 'B.板に隙間がみられる';
    case "DamageLevel.C":
      return 'C.顕著な目地ずれ、板破損';
    default:
      return 'A.目地の亀裂程度';
  }
}

// 看板・機器類
String signageAndEquipmentToLabel(String level) {
  switch (level) {
    case "DamageLevel.A":
      return 'A.傾斜無し';
    case "DamageLevel.B":
      return 'B.わずかな傾斜';
    case "DamageLevel.C":
      return 'C.落下の危険有り';
    default:
      return 'A.傾斜無し';
  }
}

// 屋外階段
String outdoorStairsToLabel(String level) {
  switch (level) {
    case "DamageLevel.A":
      return 'A.傾斜なし';
    case "DamageLevel.B":
      return 'B.わずかな傾斜';
    case "DamageLevel.C":
      return 'C.明瞭な傾斜';
    default:
      return 'A.傾斜なし';
  }
}

// その他
String othersToLabel(String level) {
  switch (level) {
    case "DamageLevel.A":
      return 'A.安全';
    case "DamageLevel.B":
      return 'B.要注意';
    case "DamageLevel.C":
      return 'C.危険';
    default:
      return 'A.安全';
  }
}
