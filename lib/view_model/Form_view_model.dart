import 'package:flutter/cupertino.dart';
import '../models/investigator_model.dart';

class FormViewModel extends ChangeNotifier {
  // --- 調査単位用コントローラー ---
  final TextEditingController buildingtypeController;
  final TextEditingController nameController;
  final TextEditingController numberController;
  final TextEditingController investigatorPrefectureController;
  final TextEditingController investigatorNumberController;
  final TextEditingController countController;

  // --- 建築物概要用 ---
  final TextEditingController buildingNameController;
  final TextEditingController buildingNumberController;
  final TextEditingController addressController;
  final TextEditingController mapNumberController;
  final TextEditingController buildingUseController;
  final TextEditingController structureController;
  final TextEditingController floorsController;
  final TextEditingController scaleController;

  // --- 調査内容用 ---
  final TextEditingController exteriorInspectionScoreController;
  final TextEditingController exteriorInspectionRemarksController;
  final TextEditingController adjacentBuildingRiskController;
  final TextEditingController unevenSettlementController;
  final TextEditingController foundationDamageController; // Wooden専用
  final TextEditingController firstFloorTiltController; // Wooden専用
  final TextEditingController wallDamageController; // Wooden専用
  final TextEditingController corrosionOrTermiteController; // Wooden専用
  final TextEditingController upperFloorLe1Controller; // SteelFrame専用
  final TextEditingController upperFloorLe2Controller; // SteelFrame専用
  final TextEditingController hasBucklingController; // SteelFrame専用
  final TextEditingController bracingBreakRateController; // SteelFrame専用
  final TextEditingController jointFailureController; // SteelFrame専用
  final TextEditingController columnBaseDamageController; // SteelFrame専用
  final TextEditingController corrosionController; // SteelFrame専用
  final TextEditingController roofOrSignboardRiskController;
  final TextEditingController windowFrameController;
  final TextEditingController exteriorWetController;
  final TextEditingController exteriorDryController;
  final TextEditingController signageAndEquipmentController;
  final TextEditingController outdoorStairsController;
  final TextEditingController othersController;
  final TextEditingController otherRemarksController;

  // --- Rebar（鉄筋コンクリート造）用 ---
  // 損傷度Ⅲ以上の損傷部材の有無
  final TextEditingController hasSevereDamageMembersController;
  // 地盤破壊による建築物全体の沈下
  final TextEditingController groundFailureInclinationController;
  // 柱の被害調査（階数）
  final TextEditingController inspectedFloorsForColumnsController;
  // 損傷度Ⅴ
  final TextEditingController totalColumnsLevel5Controller;
  final TextEditingController surveyedColumnsLevel5Controller;
  final TextEditingController percentColumnsLevel5Controller;
  final TextEditingController percentColumnsDamageLevel5Controller;
  final TextEditingController surveyRateLevel5Controller;
  // 損傷度Ⅳ
  final TextEditingController totalColumnsLevel4Controller;
  final TextEditingController surveyedColumnsLevel4Controller;
  final TextEditingController percentColumnsLevel4Controller;
  final TextEditingController percentColumnsDamageLevel4Controller;
  final TextEditingController surveyRateLevel4Controller;
  // 落下危険物・転倒危険物
  final TextEditingController exteriorMaterialMortarTileStoneController;
  final TextEditingController exteriorMaterialALCPCMetalBlockController;
  // その他
  final TextEditingController overallStructuralScore2Controller;

  DamageLevel? calc4DamageLevel() {
    int damagedPillar = int.tryParse(totalColumnsLevel4Controller.text) ?? 0;
    int total = int.tryParse(surveyedColumnsLevel4Controller.text) ?? 0;
    late double percent;
    if (damagedPillar < total) {
      percent = (damagedPillar / total) * 100;
      if (percent > 10) {
        return DamageLevel.C;
      } else if (percent > 1) {
        return DamageLevel.B;
      } else {
        return DamageLevel.A;
      }
    } else {
      return null;
    }
  }

  DamageLevel? calc5DamageLevel() {
    int damagedPillar = int.tryParse(totalColumnsLevel5Controller.text) ?? 0;
    int total = int.tryParse(surveyedColumnsLevel5Controller.text) ?? 0;
    late double percent;
    if (damagedPillar < total) {
      percent = (damagedPillar / total) * 100;
      if (percent > 20) {
        return DamageLevel.C;
      } else if (percent > 10) {
        return DamageLevel.B;
      } else {
        return DamageLevel.A;
      }
    } else {
      return null;
    }
  }

  // 調査日
  DateTime selectedDate = DateTime.now();

  // 都道府県
  int selectedPrefectureIndex = 0;
  final List<String> _prefectures = [
    "北海道",
    "青森県",
    "岩手県",
    "宮城県",
    "秋田県",
    "山形県",
    "福島県",
    "茨城県",
    "栃木県",
    "群馬県",
    "埼玉県",
    "千葉県",
    "東京都",
    "神奈川県",
    "新潟県",
    "富山県",
    "石川県",
    "福井県",
    "山梨県",
    "長野県",
    "岐阜県",
    "静岡県",
    "愛知県",
    "三重県",
    "滋賀県",
    "京都府",
    "大阪府",
    "兵庫県",
    "奈良県",
    "和歌山県",
    "鳥取県",
    "島根県",
    "岡山県",
    "広島県",
    "山口県",
    "徳島県",
    "香川県",
    "愛媛県",
    "高知県",
    "福岡県",
    "佐賀県",
    "長崎県",
    "熊本県",
    "大分県",
    "宮崎県",
    "鹿児島県",
    "沖縄県",
  ];
  List<String> get prefectures => _prefectures;

  FormViewModel(
      {WoodenRecord? woodenRecord,
      SteelFrameRecord? SteelFrameRecord,
      RebarRecord? rebarRecord})
      : buildingtypeController = TextEditingController(
            text: woodenRecord?.unit.buildingtype ??
                SteelFrameRecord?.unit.buildingtype ??
                ''),
        nameController = TextEditingController(
            text: (woodenRecord?.unit.investigator.isNotEmpty == true
                ? woodenRecord!.unit.investigator[0]
                : (SteelFrameRecord?.unit.investigator.isNotEmpty == true
                    ? SteelFrameRecord!.unit.investigator[0]
                    : ''))),
        numberController = TextEditingController(
            text: woodenRecord?.unit.number ??
                SteelFrameRecord?.unit.number ??
                ''),
        investigatorPrefectureController = TextEditingController(
            text: (woodenRecord?.unit.investigatorPrefecture.isNotEmpty == true
                ? woodenRecord!.unit.investigatorPrefecture[0]
                : (SteelFrameRecord?.unit.investigatorPrefecture.isNotEmpty ==
                        true
                    ? SteelFrameRecord!.unit.investigatorPrefecture[0]
                    : ''))),
        investigatorNumberController = TextEditingController(
            text: (woodenRecord?.unit.investigatorNumber.isNotEmpty == true
                ? woodenRecord!.unit.investigatorNumber[0]
                : (SteelFrameRecord?.unit.investigatorNumber.isNotEmpty == true
                    ? SteelFrameRecord!.unit.investigatorNumber[0]
                    : ''))),
        countController = TextEditingController(
            text: woodenRecord?.unit.surveyCount.toString() ??
                SteelFrameRecord?.unit.surveyCount.toString() ??
                ''),
        buildingNameController = TextEditingController(
            text: woodenRecord?.overview.buildingName ??
                SteelFrameRecord?.overview.buildingName ??
                ''),
        buildingNumberController = TextEditingController(
            text: woodenRecord?.overview.buildingNumber ??
                SteelFrameRecord?.overview.buildingNumber ??
                ''),
        addressController = TextEditingController(
            text: woodenRecord?.overview.address ??
                SteelFrameRecord?.overview.address ??
                ''),
        mapNumberController = TextEditingController(
            text: woodenRecord?.overview.mapNumber ??
                SteelFrameRecord?.overview.mapNumber ??
                ''),
        buildingUseController = TextEditingController(
            text: woodenRecord?.overview.buildingUse ??
                SteelFrameRecord?.overview.buildingUse ??
                ''),
        structureController = TextEditingController(
            text: woodenRecord?.overview.structure ??
                SteelFrameRecord?.overview.structure ??
                ''),
        floorsController = TextEditingController(
            text: woodenRecord?.overview.floors.toString() ??
                SteelFrameRecord?.overview.floors.toString() ??
                ''),
        scaleController = TextEditingController(
            text: woodenRecord?.overview.scale ??
                SteelFrameRecord?.overview.scale ??
                ''),
        exteriorInspectionScoreController = TextEditingController(
            text: woodenRecord?.content.exteriorInspectionScore.toString() ??
                SteelFrameRecord?.content.exteriorInspectionScore.toString() ??
                ''),
        exteriorInspectionRemarksController = TextEditingController(
            text: woodenRecord?.content.exteriorInspectionRemarks ??
                SteelFrameRecord?.content.exteriorInspectionRemarks ??
                ''),
        adjacentBuildingRiskController = TextEditingController(
            text: woodenRecord?.content.adjacentBuildingRisk.toString() ??
                SteelFrameRecord?.content.adjacentBuildingRisk.toString() ??
                ''),
        unevenSettlementController = TextEditingController(
            text: woodenRecord?.content.unevenSettlement.toString() ??
                SteelFrameRecord?.content.unevenSettlement.toString() ??
                ''),
        foundationDamageController = TextEditingController(
            text: woodenRecord?.content.foundationDamage.toString() ??
                ''), // SteelFrameにはなし
        firstFloorTiltController = TextEditingController(
            text: woodenRecord?.content.firstFloorTilt.toString() ??
                ''), // SteelFrameにはなし
        wallDamageController = TextEditingController(
            text: woodenRecord?.content.wallDamage.toString() ??
                ''), // SteelFrameにはなし
        corrosionOrTermiteController = TextEditingController(
            text: woodenRecord?.content.corrosionOrTermite.toString() ??
                ''), // SteelFrameにはなし
        upperFloorLe1Controller = TextEditingController(
            text: SteelFrameRecord?.content.upperFloorLe1.toString() ??
                ''), // Woodenにはなし
        upperFloorLe2Controller = TextEditingController(
            text: SteelFrameRecord?.content.upperFloorLe2.toString() ?? ''),
        hasBucklingController = TextEditingController(
            text: SteelFrameRecord?.content.hasBuckling.toString() ?? ''),
        bracingBreakRateController = TextEditingController(
            text: SteelFrameRecord?.content.bracingBreakRate.toString() ?? ''),
        jointFailureController = TextEditingController(
            text: SteelFrameRecord?.content.jointFailure.toString() ?? ''),
        columnBaseDamageController = TextEditingController(
            text: SteelFrameRecord?.content.columnBaseDamage.toString() ?? ''),
        corrosionController = TextEditingController(
            text: SteelFrameRecord?.content.corrosion.toString() ?? ''),
        roofOrSignboardRiskController = TextEditingController(
            text: woodenRecord?.content.roofTile.toString() ??
                SteelFrameRecord?.content.roofingMaterial.toString() ??
                ''),
        windowFrameController = TextEditingController(
            text: woodenRecord?.content.windowFrame.toString() ??
                SteelFrameRecord?.content.windowFrame.toString() ??
                ''),
        exteriorWetController = TextEditingController(
            text: woodenRecord?.content.exteriorWet.toString() ??
                SteelFrameRecord?.content.exteriorWet.toString() ??
                ''),
        exteriorDryController = TextEditingController(
            text: woodenRecord?.content.exteriorDry.toString() ??
                SteelFrameRecord?.content.exteriorDry.toString() ??
                ''),
        signageAndEquipmentController = TextEditingController(
            text: woodenRecord?.content.signageAndEquipment.toString() ??
                SteelFrameRecord?.content.signageAndEquipment.toString() ??
                ''),
        outdoorStairsController = TextEditingController(
            text: woodenRecord?.content.outdoorStairs.toString() ??
                SteelFrameRecord?.content.outdoorStairs.toString() ??
                ''),
        othersController = TextEditingController(
            text: woodenRecord?.content.others.toString() ??
                SteelFrameRecord?.content.others.toString() ??
                ''),
        otherRemarksController = TextEditingController(
            text: woodenRecord?.content.otherRemarks ??
                SteelFrameRecord?.content.otherRemarks ??
                ''),
        hasSevereDamageMembersController = TextEditingController(
          text: rebarRecord?.content.hasSevereDamageMembers.toString() ?? '',
        ),
        groundFailureInclinationController = TextEditingController(
          text: rebarRecord?.content.groundFailureInclination.toString() ?? '',
        ),
        inspectedFloorsForColumnsController = TextEditingController(
          text: rebarRecord?.content.inspectedFloorsForColumns.toString() ?? '',
        ),
        totalColumnsLevel5Controller = TextEditingController(
          text: rebarRecord?.content.totalColumnsLevel5.toString() ?? '',
        ),
        surveyedColumnsLevel5Controller = TextEditingController(
          text: rebarRecord?.content.surveyedColumnsLevel5.toString() ?? '',
        ),
        percentColumnsLevel5Controller = TextEditingController(
          text: rebarRecord?.content.percentColumnsLevel5.toString() ?? '',
        ),
        percentColumnsDamageLevel5Controller = TextEditingController(
          text:
              rebarRecord?.content.percentColumnsDamageLevel5.toString() ?? '',
        ),
        surveyRateLevel5Controller = TextEditingController(
          text: rebarRecord?.content.surveyRateLevel5.toString() ?? '',
        ),
        totalColumnsLevel4Controller = TextEditingController(
          text: rebarRecord?.content.totalColumnsLevel4.toString() ?? '',
        ),
        surveyedColumnsLevel4Controller = TextEditingController(
          text: rebarRecord?.content.surveyedColumnsLevel4.toString() ?? '',
        ),
        percentColumnsLevel4Controller = TextEditingController(
          text: rebarRecord?.content.percentColumnsLevel4.toString() ?? '',
        ),
        percentColumnsDamageLevel4Controller = TextEditingController(
          text:
              rebarRecord?.content.percentColumnsDamageLevel4.toString() ?? '',
        ),
        surveyRateLevel4Controller = TextEditingController(
          text: rebarRecord?.content.surveyRateLevel4.toString() ?? '',
        ),
        exteriorMaterialMortarTileStoneController = TextEditingController(
          text:
              rebarRecord?.content.exteriorMaterialMortarTileStone.toString() ??
                  '',
        ),
        exteriorMaterialALCPCMetalBlockController = TextEditingController(
          text:
              rebarRecord?.content.exteriorMaterialALCPCMetalBlock.toString() ??
                  '',
        ),
        overallStructuralScore2Controller = TextEditingController(
          text: rebarRecord?.content.overallStructuralScore2.toString() ?? '',
        ),
        selectedDate = woodenRecord?.unit.date ??
            SteelFrameRecord?.unit.date ??
            DateTime.now() {
    if (woodenRecord?.unit.investigatorPrefecture.isNotEmpty == true) {
      selectedPrefectureIndex =
          _prefectures.indexOf(woodenRecord!.unit.investigatorPrefecture[0]);
    } else if (SteelFrameRecord?.unit.investigatorPrefecture.isNotEmpty ==
        true) {
      selectedPrefectureIndex = _prefectures
          .indexOf(SteelFrameRecord!.unit.investigatorPrefecture[0]);
    }
  }

  void setSelectedPrefecture(int index) {
    selectedPrefectureIndex = index;
    investigatorPrefectureController.text = _prefectures[index];
    notifyListeners();
  }

  String get selectedPrefecture => _prefectures[selectedPrefectureIndex];

  void setSelectedDate(DateTime newDate) {
    selectedDate = newDate;
    notifyListeners();
  }

  @override
  void dispose() {
    buildingtypeController.dispose();
    nameController.dispose();
    numberController.dispose();
    investigatorPrefectureController.dispose();
    investigatorNumberController.dispose();
    countController.dispose();
    buildingNameController.dispose();
    buildingNumberController.dispose();
    addressController.dispose();
    mapNumberController.dispose();
    buildingUseController.dispose();
    structureController.dispose();
    floorsController.dispose();
    scaleController.dispose();
    exteriorInspectionScoreController.dispose();
    exteriorInspectionRemarksController.dispose();
    adjacentBuildingRiskController.dispose();
    unevenSettlementController.dispose();
    foundationDamageController.dispose();
    firstFloorTiltController.dispose();
    wallDamageController.dispose();
    corrosionOrTermiteController.dispose();
    upperFloorLe1Controller.dispose();
    upperFloorLe2Controller.dispose();
    hasBucklingController.dispose();
    bracingBreakRateController.dispose();
    jointFailureController.dispose();
    columnBaseDamageController.dispose();
    corrosionController.dispose();
    roofOrSignboardRiskController.dispose();
    windowFrameController.dispose();
    exteriorWetController.dispose();
    exteriorDryController.dispose();
    signageAndEquipmentController.dispose();
    outdoorStairsController.dispose();
    othersController.dispose();
    otherRemarksController.dispose();
    hasSevereDamageMembersController.dispose();
    groundFailureInclinationController.dispose();
    inspectedFloorsForColumnsController.dispose();
    totalColumnsLevel5Controller.dispose();
    surveyedColumnsLevel5Controller.dispose();
    percentColumnsLevel5Controller.dispose();
    percentColumnsDamageLevel5Controller.dispose();
    surveyRateLevel5Controller.dispose();
    totalColumnsLevel4Controller.dispose();
    surveyedColumnsLevel4Controller.dispose();
    percentColumnsLevel4Controller.dispose();
    percentColumnsDamageLevel4Controller.dispose();
    surveyRateLevel4Controller.dispose();
    exteriorMaterialMortarTileStoneController.dispose();
    exteriorMaterialALCPCMetalBlockController.dispose();
    overallStructuralScore2Controller.dispose();

    super.dispose();
  }
}
