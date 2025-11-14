import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../../../../../view_model/Form_view_model.dart';
import '../../../../../view_model/investigator_post_view_model.dart';
import '../../../../wigets/choose_picker.dart';

class WoodenBuildingOverview extends StatelessWidget {
  const WoodenBuildingOverview({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<InvestigationViewModel>();
    final inputVM = context.read<FormViewModel>();

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('木造建築物概要入力'),
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
                  // --- 各入力項目 ---
                  _buildCupertinoTextField(
                      label: '建築物名称',
                      controller: inputVM.buildingNameController),
                  _buildCupertinoTextField(
                      label: '建築物番号',
                      controller: inputVM.buildingNumberController),
                  _buildCupertinoTextField(
                      label: '建築物所在地', controller: inputVM.addressController),
                  _buildCupertinoTextField(
                      label: '住宅地図整理番号',
                      controller: inputVM.mapNumberController),
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
                      inputVM.buildingUseController.text = value;
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
                      inputVM.structureController.text = value;
                    },
                  ),
                  _buildCupertinoTextField(
                      label: '階層', controller: inputVM.floorsController),
                  _buildCupertinoTextField(
                      label: '規模', controller: inputVM.scaleController),

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
                              viewModel.updateOverview(
                                buildingName:
                                    inputVM.buildingNameController.text,
                                buildingNumber:
                                    inputVM.buildingNumberController.text,
                                address: inputVM.addressController.text,
                                mapNumber: inputVM.mapNumberController.text,
                                buildingUse: inputVM.buildingUseController.text,
                                structure: inputVM.structureController.text,
                                floors: int.tryParse(
                                        inputVM.floorsController.text) ??
                                    0,
                                scale: inputVM.scaleController.text,
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
