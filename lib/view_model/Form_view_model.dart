import 'package:flutter/cupertino.dart';
import '../models/investigator_model.dart';

class FormViewModel extends ChangeNotifier {
  //調査単位用のコントローラー
  final TextEditingController buildingtypeController;
  final TextEditingController nameController;
  final TextEditingController numberController;
  final TextEditingController investigatorPrefectureController;
  final TextEditingController investigatorNumberController;
  final TextEditingController countController;

  //建築物概要用のコントローラー
  final TextEditingController buildingNameController;
  final TextEditingController buildingNumberController;
  final TextEditingController addressController;
  final TextEditingController mapNumberController;
  final TextEditingController buildingUseController;
  final TextEditingController structureController;
  final TextEditingController floorsController;
  final TextEditingController scaleController;

  //調査内容用のコントローラー

  /// --- １.一見して危険と判断される(外観調査) ---
  final TextEditingController exteriorInspectionScoreController;
  final TextEditingController exteriorInspectionRemarksController;

  /// --- ２.隣接建築物・周辺地盤等及び構造躯体に関する危険度 ---
  final TextEditingController adjacentBuildingRiskController;
  final TextEditingController unevenSettlementController;
  final TextEditingController foundationDamageController;
  final TextEditingController firstFloorTiltController;
  final TextEditingController wallDamageController;
  final TextEditingController corrosionOrTermiteController;

  // --- ３.落下危険物・転倒危険物に関する危険度 ---
  final TextEditingController roofOrSignboardRiskController;
  final TextEditingController windowFrameController;
  final TextEditingController exteriorWetController;
  final TextEditingController exteriorDryController;
  final TextEditingController signageAndEquipmentController;
  final TextEditingController outdoorStairsController;
  final TextEditingController othersController;
  final TextEditingController otherRemarksController;
  FormViewModel({InvestigationRecord? record})
      : buildingtypeController =
            TextEditingController(text: record?.unit.buildingtype ?? ''),
        nameController = TextEditingController(
            text: record?.unit.investigator.isNotEmpty == true
                ? record!.unit.investigator[0]
                : ''),
        numberController =
            TextEditingController(text: record?.unit.number ?? ''),
        investigatorPrefectureController = TextEditingController(
            text: record?.unit.investigatorPrefecture.isNotEmpty == true
                ? record!.unit.investigatorPrefecture[0]
                : ''),
        investigatorNumberController = TextEditingController(
            text: record?.unit.investigatorNumber.isNotEmpty == true
                ? record!.unit.investigatorNumber[0]
                : ''),
        countController = TextEditingController(
            text: record?.unit.surveyCount.toString() ?? ''),
        buildingNameController =
            TextEditingController(text: record?.overview.buildingName ?? ''),
        buildingNumberController =
            TextEditingController(text: record?.overview.buildingNumber ?? ''),
        addressController =
            TextEditingController(text: record?.overview.address ?? ''),
        mapNumberController =
            TextEditingController(text: record?.overview.mapNumber ?? ''),
        buildingUseController =
            TextEditingController(text: record?.overview.buildingUse ?? ''),
        structureController =
            TextEditingController(text: record?.overview.structure ?? ''),
        floorsController = TextEditingController(
            text: record?.overview.floors.toString() ?? ''),
        scaleController =
            TextEditingController(text: record?.overview.scale ?? ''),
        exteriorInspectionScoreController = TextEditingController(
            text: record?.content.exteriorInspectionScore.toString() ?? ''),
        exteriorInspectionRemarksController = TextEditingController(
            text: record?.content.exteriorInspectionRemarks ?? ''),
        adjacentBuildingRiskController = TextEditingController(
            text: record?.content.adjacentBuildingRisk.toString() ?? ''),
        unevenSettlementController = TextEditingController(
            text: record?.content.unevenSettlement.toString() ?? ''),
        foundationDamageController = TextEditingController(
            text: record?.content.foundationDamage.toString() ?? ''),
        firstFloorTiltController = TextEditingController(
            text: record?.content.firstFloorTilt.toString() ?? ''),
        wallDamageController = TextEditingController(
            text: record?.content.wallDamage.toString() ?? ''),
        corrosionOrTermiteController = TextEditingController(
            text: record?.content.corrosionOrTermite.toString() ?? ''),
        roofOrSignboardRiskController = TextEditingController(
            text: record?.content.roofTile.toString() ?? ''),
        windowFrameController = TextEditingController(
            text: record?.content.windowFrame.toString() ?? ''),
        exteriorWetController = TextEditingController(
            text: record?.content.exteriorWet.toString() ?? ''),
        exteriorDryController = TextEditingController(
            text: record?.content.exteriorDry.toString() ?? ''),
        signageAndEquipmentController = TextEditingController(
            text: record?.content.signageAndEquipment.toString() ?? ''),
        outdoorStairsController = TextEditingController(
            text: record?.content.outdoorStairs.toString() ?? ''),
        othersController = TextEditingController(
            text: record?.content.others.toString() ?? ''),
        otherRemarksController =
            TextEditingController(text: record?.content.otherRemarks ?? ''),
        selectedDate = record?.unit.date ?? DateTime.now() {
    if (record?.unit.investigatorPrefecture.isNotEmpty == true) {
      selectedPrefectureIndex =
          prefectures.indexOf(record!.unit.investigatorPrefecture[0]);
    }
  }
  int selectedPrefectureIndex = 0;
  final _prefectures = [
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
  //外部から取得するためのゲッター
  List<String> get prefectures => _prefectures;

  void setSelectedPrefecture(int index) {
    selectedPrefectureIndex = index;
    investigatorPrefectureController.text = _prefectures[index];
    notifyListeners();
  }

  String get selectedPrefecture => _prefectures[selectedPrefectureIndex];

  // 調査日
  DateTime selectedDate = DateTime.now();

  // 日付を更新するメソッド
  void setSelectedDate(DateTime newDate) {
    selectedDate = newDate;
    notifyListeners();
  }

  @override
  void dispose() {
    // 調査単位用
    buildingtypeController.dispose();
    nameController.dispose();
    numberController.dispose();
    investigatorPrefectureController.dispose();
    investigatorNumberController.dispose();
    countController.dispose();

    // 建築物概要用
    buildingNameController.dispose();
    buildingNumberController.dispose();
    addressController.dispose();
    mapNumberController.dispose();
    buildingUseController.dispose();
    structureController.dispose();
    floorsController.dispose();
    scaleController.dispose();

    // 調査内容用
    exteriorInspectionScoreController.dispose();
    exteriorInspectionRemarksController.dispose();
    adjacentBuildingRiskController.dispose();
    unevenSettlementController.dispose();
    foundationDamageController.dispose();
    firstFloorTiltController.dispose();
    wallDamageController.dispose();
    corrosionOrTermiteController.dispose();
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
