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
  final TextEditingController upperFloorLe1Controller; // Rebar専用
  final TextEditingController upperFloorLe2Controller; // Rebar専用
  final TextEditingController hasBucklingController; // Rebar専用
  final TextEditingController bracingBreakRateController; // Rebar専用
  final TextEditingController jointFailureController; // Rebar専用
  final TextEditingController columnBaseDamageController; // Rebar専用
  final TextEditingController corrosionController; // Rebar専用
  final TextEditingController roofOrSignboardRiskController;
  final TextEditingController windowFrameController;
  final TextEditingController exteriorWetController;
  final TextEditingController exteriorDryController;
  final TextEditingController signageAndEquipmentController;
  final TextEditingController outdoorStairsController;
  final TextEditingController othersController;
  final TextEditingController otherRemarksController;

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

  FormViewModel({WoodenRecord? woodenRecord, RebarRecord? rebarRecord})
      : buildingtypeController = TextEditingController(
            text: woodenRecord?.unit.buildingtype ??
                rebarRecord?.unit.buildingtype ??
                ''),
        nameController = TextEditingController(
            text: (woodenRecord?.unit.investigator.isNotEmpty == true
                ? woodenRecord!.unit.investigator[0]
                : (rebarRecord?.unit.investigator.isNotEmpty == true
                    ? rebarRecord!.unit.investigator[0]
                    : ''))),
        numberController = TextEditingController(
            text: woodenRecord?.unit.number ?? rebarRecord?.unit.number ?? ''),
        investigatorPrefectureController = TextEditingController(
            text: (woodenRecord?.unit.investigatorPrefecture.isNotEmpty == true
                ? woodenRecord!.unit.investigatorPrefecture[0]
                : (rebarRecord?.unit.investigatorPrefecture.isNotEmpty == true
                    ? rebarRecord!.unit.investigatorPrefecture[0]
                    : ''))),
        investigatorNumberController = TextEditingController(
            text: (woodenRecord?.unit.investigatorNumber.isNotEmpty == true
                ? woodenRecord!.unit.investigatorNumber[0]
                : (rebarRecord?.unit.investigatorNumber.isNotEmpty == true
                    ? rebarRecord!.unit.investigatorNumber[0]
                    : ''))),
        countController = TextEditingController(
            text: woodenRecord?.unit.surveyCount.toString() ??
                rebarRecord?.unit.surveyCount.toString() ??
                ''),
        buildingNameController = TextEditingController(
            text: woodenRecord?.overview.buildingName ??
                rebarRecord?.overview.buildingName ??
                ''),
        buildingNumberController = TextEditingController(
            text: woodenRecord?.overview.buildingNumber ??
                rebarRecord?.overview.buildingNumber ??
                ''),
        addressController = TextEditingController(
            text: woodenRecord?.overview.address ??
                rebarRecord?.overview.address ??
                ''),
        mapNumberController = TextEditingController(
            text: woodenRecord?.overview.mapNumber ??
                rebarRecord?.overview.mapNumber ??
                ''),
        buildingUseController = TextEditingController(
            text: woodenRecord?.overview.buildingUse ??
                rebarRecord?.overview.buildingUse ??
                ''),
        structureController = TextEditingController(
            text: woodenRecord?.overview.structure ??
                rebarRecord?.overview.structure ??
                ''),
        floorsController = TextEditingController(
            text: woodenRecord?.overview.floors.toString() ??
                rebarRecord?.overview.floors.toString() ??
                ''),
        scaleController = TextEditingController(
            text: woodenRecord?.overview.scale ??
                rebarRecord?.overview.scale ??
                ''),
        exteriorInspectionScoreController = TextEditingController(
            text: woodenRecord?.content.exteriorInspectionScore.toString() ??
                rebarRecord?.content.exteriorInspectionScore.toString() ??
                ''),
        exteriorInspectionRemarksController = TextEditingController(
            text: woodenRecord?.content.exteriorInspectionRemarks ??
                rebarRecord?.content.exteriorInspectionRemarks ??
                ''),
        adjacentBuildingRiskController = TextEditingController(
            text: woodenRecord?.content.adjacentBuildingRisk.toString() ??
                rebarRecord?.content.adjacentBuildingRisk.toString() ??
                ''),
        unevenSettlementController = TextEditingController(
            text: woodenRecord?.content.unevenSettlement.toString() ??
                rebarRecord?.content.unevenSettlement.toString() ??
                ''),
        foundationDamageController = TextEditingController(
            text: woodenRecord?.content.foundationDamage.toString() ??
                ''), // Rebarにはなし
        firstFloorTiltController = TextEditingController(
            text: woodenRecord?.content.firstFloorTilt.toString() ??
                ''), // Rebarにはなし
        wallDamageController = TextEditingController(
            text:
                woodenRecord?.content.wallDamage.toString() ?? ''), // Rebarにはなし
        corrosionOrTermiteController = TextEditingController(
            text: woodenRecord?.content.corrosionOrTermite.toString() ??
                ''), // Rebarにはなし
        upperFloorLe1Controller = TextEditingController(
            text: rebarRecord?.content.upperFloorLe1.toString() ??
                ''), // Woodenにはなし
        upperFloorLe2Controller = TextEditingController(
            text: rebarRecord?.content.upperFloorLe2.toString() ?? ''),
        hasBucklingController = TextEditingController(
            text: rebarRecord?.content.hasBuckling.toString() ?? ''),
        bracingBreakRateController = TextEditingController(
            text: rebarRecord?.content.bracingBreakRate.toString() ?? ''),
        jointFailureController = TextEditingController(
            text: rebarRecord?.content.jointFailure.toString() ?? ''),
        columnBaseDamageController = TextEditingController(
            text: rebarRecord?.content.columnBaseDamage.toString() ?? ''),
        corrosionController = TextEditingController(
            text: rebarRecord?.content.corrosion.toString() ?? ''),
        roofOrSignboardRiskController = TextEditingController(
            text: woodenRecord?.content.roofTile.toString() ??
                rebarRecord?.content.roofingMaterial.toString() ??
                ''),
        windowFrameController = TextEditingController(
            text: woodenRecord?.content.windowFrame.toString() ??
                rebarRecord?.content.windowFrame.toString() ??
                ''),
        exteriorWetController = TextEditingController(
            text: woodenRecord?.content.exteriorWet.toString() ??
                rebarRecord?.content.exteriorWet.toString() ??
                ''),
        exteriorDryController = TextEditingController(
            text: woodenRecord?.content.exteriorDry.toString() ??
                rebarRecord?.content.exteriorDry.toString() ??
                ''),
        signageAndEquipmentController = TextEditingController(
            text: woodenRecord?.content.signageAndEquipment.toString() ??
                rebarRecord?.content.signageAndEquipment.toString() ??
                ''),
        outdoorStairsController = TextEditingController(
            text: woodenRecord?.content.outdoorStairs.toString() ??
                rebarRecord?.content.outdoorStairs.toString() ??
                ''),
        othersController = TextEditingController(
            text: woodenRecord?.content.others.toString() ??
                rebarRecord?.content.others.toString() ??
                ''),
        otherRemarksController = TextEditingController(
            text: woodenRecord?.content.otherRemarks ??
                rebarRecord?.content.otherRemarks ??
                ''),
        selectedDate = woodenRecord?.unit.date ??
            rebarRecord?.unit.date ??
            DateTime.now() {
    if (woodenRecord?.unit.investigatorPrefecture.isNotEmpty == true) {
      selectedPrefectureIndex =
          _prefectures.indexOf(woodenRecord!.unit.investigatorPrefecture[0]);
    } else if (rebarRecord?.unit.investigatorPrefecture.isNotEmpty == true) {
      selectedPrefectureIndex =
          _prefectures.indexOf(rebarRecord!.unit.investigatorPrefecture[0]);
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
    super.dispose();
  }
}
