import 'package:flutter/cupertino.dart';
import 'package:house_check_mobile/view/investigator/post/wooden/wooden_survery.dart';
import '../../../../models/investigator_post_model.dart';
import '../../../../controllers/investigator_post_controller.dart';
import 'package:house_check_mobile/utils/widgets/dialog.dart';
import '../../../../utils/components/choose_picker.dart';
import '../../../../controllers/loacation_controller.dart';
import 'package:geocoding/geocoding.dart';

class WoodenBuildigOverview extends StatefulWidget {
  const WoodenBuildigOverview({super.key, required this.unit});
  final InvestigationUnit unit;
  @override
  State<WoodenBuildigOverview> createState() => _WoodenBuildigOverviewState();
}

class _WoodenBuildigOverviewState extends State<WoodenBuildigOverview> {
  final _formKey = GlobalKey<FormState>();
  final controller = InvestigatorPostController();
  final _locationController = LocationControllerMVC();
  void _submit() {
    if (_formKey.currentState!.validate()) {
      final buildingname = controller.buildingNameController.text.trim();
      final buildingnumber = controller.buildingNumberController.text.trim();
      final address = controller.addressController.text.trim();
      final mapnumber = controller.mapNumberController.text.trim();
      final buildinguse = controller.buildingUseController.text.trim();
      final structure = controller.structureController.text.trim();
      final floors = controller.floorsController.text.trim();
      final scale = controller.scaleController.text.trim();

      if (buildingname.isEmpty) {
        DialogHelper.showErrorDialog(context, '「建築物名称」が未入力です。');
        return;
      }
      if (buildingnumber.isEmpty) {
        DialogHelper.showErrorDialog(context, '「建築物番号」が未入力です。');
        return;
      }
      if (address.isEmpty) {
        DialogHelper.showErrorDialog(context, '「建築物所在地」が未入力です。');
        return;
      }
      if (mapnumber.isEmpty) {
        DialogHelper.showErrorDialog(context, '「住宅地図整理番号」が未入力です。');
        return;
      }
      if (buildinguse.isEmpty) {
        DialogHelper.showErrorDialog(context, '「建築用途」が未入力です。');
        return;
      }
      if (structure.isEmpty) {
        DialogHelper.showErrorDialog(context, '「構造形式」が未入力です。');
        return;
      }
      if (floors.isEmpty) {
        DialogHelper.showErrorDialog(context, '「階数」が未入力です。');
        return;
      }
      if (scale.isEmpty) {
        DialogHelper.showErrorDialog(context, '「建築物規模」が未入力です。');
        return;
      }
      BuildingOverview buildingOverview = controller.createBuildingOverview();
      print('建築物名: ${buildingOverview.buildingName}');
      Navigator.push(
        context,
        CupertinoPageRoute(
            builder: (context) => WoodenSurvey(
                unit: widget.unit, buildingOverview: buildingOverview)),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _locationController
        .getAddressFromLatLng(widget.unit.currentPostion)
        .then((placemark) {
      setState(() {
        if (placemark != null) {
          controller.addressController.text =
              "${placemark.street}".replaceAll("日本、", "");
        }
      });
    });
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

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('木造建築物概要入力'),
        automaticallyImplyLeading: false,
      ),
      child: SafeArea(
        child: Form(
          key: _formKey,
          child: CupertinoScrollbar(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // --- 各入力項目 ---
                  _buildCupertinoTextField(
                      label: '建築物名称',
                      controller: controller.buildingNameController),
                  _buildCupertinoTextField(
                      label: '建築物番号',
                      controller: controller.buildingNumberController),
                  _buildCupertinoTextField(
                      label: '建築物所在地',
                      controller: controller.addressController),
                  _buildCupertinoTextField(
                      label: '住宅地図整理番号',
                      controller: controller.mapNumberController),
                  const Text(
                    '建築物用途',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      '戸建て専用住宅',
                      '長屋住宅',
                      '共同住宅',
                      '併用住宅',
                      '店舗',
                      '事務所',
                      '旅館・ホテル',
                      '庁舎等公共施設',
                      '病院・診療所',
                      '保育所',
                      '工場',
                      '倉庫',
                      '学校',
                      '劇場、遊戯場等',
                      'その他',
                    ],
                    initialValue: '戸建て専用住宅',
                    onChanged: (value) {
                      controller.buildingUseController.text = value;
                    },
                  ),
                  const Text(
                    '構造形式',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  CupertinoDropdown(
                    options: [
                      '在来軸組法',
                      '枠組(壁)工法(ツーバイフォー)',
                      'プレファブ'
                          'その他',
                    ],
                    initialValue: '在来軸組法',
                    onChanged: (value) {
                      controller.structureController.text = value;
                    },
                  ),
                  _buildCupertinoTextField(
                      label: '階層', controller: controller.floorsController),
                  _buildCupertinoTextField(
                      label: '規模', controller: controller.scaleController),

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
                              _submit();
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
