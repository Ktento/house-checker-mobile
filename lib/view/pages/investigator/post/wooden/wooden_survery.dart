import 'package:flutter/cupertino.dart';
import 'package:house_check_mobile/view/pages/investigator/post/wooden/wooden_check.dart';
import 'package:house_check_mobile/utils/helpers/dialog.dart';
import '../../../../wigets/choose_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import '../../../../../view_model/Form_view_model.dart';
import '../../../../../view_model/investigator_post_view_model.dart';
import '../../../../../models/investigator_model.dart';
import '../../../../../utils/helpers/damageLevel.dart';
import '../../../../../view/wigets/image_pickere.dart';

class WoodenSurvery extends StatefulWidget {
  @override
  State<WoodenSurvery> createState() => _WoodenSurveryState();
}

class _WoodenSurveryState extends State<WoodenSurvery> {
  XFile? _image;

  final ImagePicker _picker = ImagePicker();

  // 画像選択関数
  Future<void> pickImage() async {
    final picked = await _picker.pickImage(source: ImageSource.gallery);
    if (picked == null) return;
    setState(() => _image = picked);
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<InvestigationViewModel>();
    final inputVM = context.read<FormViewModel>();
    print(inputVM.adjacentBuildingRiskController.text);
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('調査内容入力'),
        automaticallyImplyLeading: false,
      ),
      child: SafeArea(
        child: Form(
          child: CupertinoScrollbar(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '外観調査点数',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      '1.建物全体又は一部の崩壊・落階',
                      '2.基礎の著しい破壊、上部構造との著しいずれ',
                      '3.建物全体又は一部の著しい傾斜',
                      '4.その他',
                      '5.なし'
                    ],
                    initialValue: inputVM.exteriorInspectionScoreController.text
                            .contains("Damage")
                        ? inputVM.exteriorInspectionScoreController.text
                        : '5.なし',
                    onChanged: (value) {
                      inputVM.exteriorInspectionScoreController.text = value;
                    },
                    showImagePicker: true,
                    onImagePicked: (file) {
                      print(file?.path);
                    },
                  ),
                  _buildCupertinoTextField(
                      label: '外観調査備考',
                      controller: inputVM.exteriorInspectionRemarksController),
                  const Text(
                    '隣接建築物・周辺地盤の危険',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.危険無し',
                      'B.不明確',
                      'C.危険あり',
                    ],
                    initialValue: inputVM.adjacentBuildingRiskController.text
                            .contains("Damage")
                        ? adjacentBuildingRiskToLabel(
                            inputVM.adjacentBuildingRiskController.text)
                        : inputVM.adjacentBuildingRiskController.text,
                    onChanged: (value) {
                      inputVM.adjacentBuildingRiskController.text = value;
                    },
                    showImagePicker: true,
                    onImagePicked: (file) {
                      if (file != null) {
                        viewModel.updateImageField(
                            'adjacentBuildingRiskImages', [file.path]);
                      }
                    },
                  ),

                  const Text(
                    '構造躯体の不同沈下',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.無し又は軽微',
                      'B.著しい床、屋根の落ち込み、浮き上がり',
                      'C.小屋組みの破壊、床全体の沈下',
                    ],
                    initialValue: inputVM.unevenSettlementController.text
                            .contains("Damage")
                        ? unevenSettlementToLabel(
                            inputVM.unevenSettlementController.text)
                        : inputVM.unevenSettlementController.text,
                    onChanged: (value) {
                      inputVM.unevenSettlementController.text = value;
                    },
                    showImagePicker: true,
                    onImagePicked: (file) {
                      if (file != null) {
                        viewModel.updateImageField(
                            'unevenSettlementImages', [file.path]);
                      }
                    },
                  ),
                  const Text(
                    '基礎の被害',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.無被害',
                      'B.部分的',
                      'C.著しい(被害あり)',
                    ],
                    initialValue: inputVM.foundationDamageController.text
                            .contains("Damage")
                        ? foundationDamageToLabel(
                            inputVM.foundationDamageController.text)
                        : inputVM.foundationDamageController.text,
                    onChanged: (value) {
                      inputVM.foundationDamageController.text = value;
                    },
                    showImagePicker: true,
                    onImagePicked: (file) {
                      if (file != null) {
                        viewModel.updateImageField(
                            'foundationDamageImages', [file.path]);
                      }
                    },
                  ),
                  const Text(
                    '建築物の1階の傾斜',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.1/60以下',
                      'B.1/60～1/20',
                      'C.1/20超',
                    ],
                    initialValue:
                        inputVM.firstFloorTiltController.text.contains("Damage")
                            ? firstFloorTiltToLabel(
                                inputVM.firstFloorTiltController.text)
                            : inputVM.firstFloorTiltController.text,
                    onChanged: (value) {
                      inputVM.firstFloorTiltController.text = value;
                    },
                    showImagePicker: true,
                    onImagePicked: (file) {
                      if (file != null) {
                        viewModel.updateImageField(
                            'firstFloorTiltImages', [file.path]);
                      }
                    },
                  ),
                  const Text(
                    '壁の被害',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.軽微なひび割れ',
                      'B.大きな亀裂、剥離',
                      'C.落下の危険有り',
                    ],
                    initialValue: inputVM.wallDamageController.text
                            .contains("Damage")
                        ? wallDamageToLabel(inputVM.wallDamageController.text)
                        : inputVM.wallDamageController.text,
                    onChanged: (value) {
                      inputVM.wallDamageController.text = value;
                    },
                    showImagePicker: true,
                    onImagePicked: (file) {
                      if (file != null) {
                        viewModel
                            .updateImageField('wallDamageImages', [file.path]);
                      }
                    },
                  ),
                  const Text(
                    '腐食・蟻害の有無',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.ほとんど無し',
                      'B.一部の断面欠損',
                      'C.著しい断面欠損',
                    ],
                    initialValue: inputVM.corrosionOrTermiteController.text
                            .contains("Damage")
                        ? corrosionOrTermiteToLabel(
                            inputVM.corrosionOrTermiteController.text)
                        : inputVM.corrosionOrTermiteController.text,
                    onChanged: (value) {
                      inputVM.corrosionOrTermiteController.text = value;
                    },
                    showImagePicker: true,
                    onImagePicked: (file) {
                      if (file != null) {
                        viewModel.updateImageField(
                            'corrosionOrTermiteImages', [file.path]);
                      }
                    },
                  ),
                  const Text(
                    '瓦',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.ほとんど無被害',
                      'B.著しいずれ',
                      'C.全面的にずれ、破損',
                    ],
                    initialValue: inputVM.roofOrSignboardRiskController.text
                            .contains("Damage")
                        ? roofTileToLabel(
                            inputVM.roofOrSignboardRiskController.text)
                        : inputVM.roofOrSignboardRiskController.text,
                    onChanged: (value) {
                      inputVM.roofOrSignboardRiskController.text = value;
                    },
                    showImagePicker: true,
                    onImagePicked: (file) {
                      if (file != null) {
                        viewModel.updateImageField(
                            'roofOrSignboardRiskImages', [file.path]);
                      }
                    },
                  ),
                  const Text(
                    '窓枠・窓ガラス',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.ほとんど無被害',
                      'B.歪み、ひび割れ',
                      'C.落下の危険有',
                    ],
                    initialValue: inputVM.windowFrameController.text
                            .contains("Damage")
                        ? windowFrameToLabel(inputVM.windowFrameController.text)
                        : inputVM.windowFrameController.text,
                    onChanged: (value) {
                      inputVM.windowFrameController.text = value;
                    },
                    showImagePicker: true,
                    onImagePicked: (file) {
                      if (file != null) {
                        viewModel
                            .updateImageField('windowFrameImages', [file.path]);
                      }
                    },
                  ),
                  const Text(
                    '外装材　湿式の場合',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.ほとんど無被害',
                      'B.部分的なひび割れ、隙間',
                      'C.顕著なひび割れ、剥離',
                    ],
                    initialValue: inputVM.exteriorWetController.text
                            .contains("Damage")
                        ? exteriorWetToLabel(inputVM.exteriorWetController.text)
                        : inputVM.exteriorWetController.text,
                    onChanged: (value) {
                      inputVM.exteriorWetController.text = value;
                    },
                    showImagePicker: true,
                    onImagePicked: (file) {
                      if (file != null) {
                        viewModel
                            .updateImageField('exteriorWetImages', [file.path]);
                      }
                    },
                  ),
                  const Text(
                    '外装材　乾式の場合',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.目地の亀裂程度',
                      'B.板に隙間がみられる',
                      'C.顕著な目地ずれ、板破損',
                    ],
                    initialValue: inputVM.exteriorDryController.text
                            .contains("Damage")
                        ? exteriorDryToLabel(inputVM.exteriorDryController.text)
                        : inputVM.exteriorDryController.text,
                    onChanged: (value) {
                      inputVM.exteriorDryController.text = value;
                    },
                    showImagePicker: true,
                    onImagePicked: (file) {
                      if (file != null) {
                        viewModel
                            .updateImageField('exteriorDryImages', [file.path]);
                      }
                    },
                  ),
                  const Text(
                    '看板・機器類',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.傾斜無し',
                      'B.わずかな傾斜',
                      'C.落下の危険有り',
                    ],
                    initialValue: inputVM.signageAndEquipmentController.text
                            .contains("Damage")
                        ? signageAndEquipmentToLabel(
                            inputVM.signageAndEquipmentController.text)
                        : inputVM.signageAndEquipmentController.text,
                    onChanged: (value) {
                      inputVM.signageAndEquipmentController.text = value;
                    },
                    showImagePicker: true,
                    onImagePicked: (file) {
                      if (file != null) {
                        viewModel.updateImageField(
                            'signageAndEquipmentImages', [file.path]);
                      }
                    },
                  ),
                  const Text(
                    '屋外階段',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.傾斜なし',
                      'B.わずかな傾斜',
                      'C.明瞭な傾斜',
                    ],
                    initialValue:
                        inputVM.outdoorStairsController.text.contains("Damage")
                            ? outdoorStairsToLabel(
                                inputVM.outdoorStairsController.text)
                            : inputVM.outdoorStairsController.text,
                    onChanged: (value) {
                      inputVM.outdoorStairsController.text = value;
                    },
                    showImagePicker: true,
                    onImagePicked: (file) {
                      if (file != null) {
                        viewModel.updateImageField(
                            'outdoorStairsImages', [file.path]);
                      }
                    },
                  ),
                  const Text(
                    'その他',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      'A.安全',
                      'B.要注意',
                      'C.危険',
                    ],
                    initialValue:
                        inputVM.othersController.text.contains("Damage")
                            ? othersToLabel(inputVM.othersController.text)
                            : inputVM.othersController.text,
                    onChanged: (value) {
                      inputVM.othersController.text = value;
                    },
                    showImagePicker: true,
                    onImagePicked: (file) {
                      if (file != null) {
                        viewModel.updateImageField('othersImages', [file.path]);
                      }
                    },
                  ),
                  _buildCupertinoTextField(
                      label: 'その他の内容',
                      controller: inputVM.otherRemarksController),

                  const SizedBox(height: 30),

                  // --- 次の画面に行く ---
                  Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CupertinoButton.filled(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            borderRadius: BorderRadius.circular(12),
                            child: const Text('戻る'),
                          ),
                          const SizedBox(width: 40),
                          CupertinoButton.filled(
                            onPressed: () {
                              viewModel.updateContent(
                                exteriorInspectionScore: _parseExteriorScore(
                                    inputVM.exteriorInspectionScoreController
                                        .text),
                                exteriorInspectionRemarks: inputVM
                                    .exteriorInspectionRemarksController.text,
                                adjacentBuildingRisk: _parseDamageLevel(inputVM
                                    .adjacentBuildingRiskController.text),
                                unevenSettlement: _parseDamageLevel(
                                    inputVM.unevenSettlementController.text),
                                foundationDamage: _parseDamageLevel(
                                    inputVM.foundationDamageController.text),
                                firstFloorTilt: _parseDamageLevel(
                                    inputVM.firstFloorTiltController.text),
                                wallDamage: _parseDamageLevel(
                                    inputVM.wallDamageController.text),
                                corrosionOrTermite: _parseDamageLevel(
                                    inputVM.corrosionOrTermiteController.text),
                                roofTile: _parseDamageLevel(
                                    inputVM.roofOrSignboardRiskController.text),
                                windowFrame: _parseDamageLevel(
                                    inputVM.windowFrameController.text),
                                exteriorWet: _parseDamageLevel(
                                    inputVM.exteriorWetController.text),
                                exteriorDry: _parseDamageLevel(
                                    inputVM.exteriorDryController.text),
                                signageAndEquipment: _parseDamageLevel(
                                    inputVM.signageAndEquipmentController.text),
                                outdoorStairs: _parseDamageLevel(
                                    inputVM.outdoorStairsController.text),
                                others: _parseDamageLevel(
                                    inputVM.othersController.text),
                                otherRemarks:
                                    inputVM.otherRemarksController.text,
                              );
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (_) => MultiProvider(
                                    providers: [
                                      ChangeNotifierProvider.value(
                                          value: context
                                              .read<InvestigationViewModel>()),
                                      ChangeNotifierProvider.value(
                                          value: context.read<FormViewModel>()),
                                    ],
                                    child: DangerSurveyFormPage(),
                                  ),
                                ),
                              );
                            },
                            borderRadius: BorderRadius.circular(12),
                            child: const Text('次へ'),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

DamageLevel _parseDamageLevel(String value) {
  switch (value) {
    case 'A.無し又は軽微':
    case 'A.無被害':
    case 'A.ほとんど無し':
    case 'A.ほとんど無被害':
    case 'A.目地の亀裂程度':
    case 'A.傾斜無し':
    case 'A.安全':
      return DamageLevel.A;
    case 'B.著しい床、屋根の落ち込み、浮き上がり':
    case 'B.部分的':
    case 'B.一部の断面欠損':
    case 'B.一部のひび割れ、隙間':
    case 'B.わずかな傾斜':
    case 'B.要注意':
      return DamageLevel.B;
    case 'C.小屋組みの破壊、床全体の沈下':
    case 'C.著しい(被害あり)':
    case 'C.顕著な断面欠損':
    case 'C.顕著なひび割れ、剥離':
    case 'C.明瞭な傾斜':
    case 'C.危険':
    case 'C.落下の危険有り':
      return DamageLevel.C;
    default:
      return DamageLevel.A;
  }
}

int _parseExteriorScore(String value) {
  if (value.isEmpty) return 5;
  return int.tryParse(value[0]) ?? 5;
}

Widget _buildCupertinoTextField({
  required String label,
  required TextEditingController controller,
  bool numeric = false,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,
          style: const TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w500)),
      const SizedBox(height: 4),
      CupertinoTextField(
        controller: controller,
        keyboardType: numeric ? TextInputType.number : TextInputType.text,
        placeholder: '$label を入力',
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        decoration: BoxDecoration(
          color: CupertinoColors.systemGrey6,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      const SizedBox(height: 16),
    ],
  );
}
