import 'package:flutter/cupertino.dart';
import 'package:house_check_mobile/view/investigator/post/wooden/wooden_survery.dart';
import '../../../../models/investigator_post_model.dart';
import '../../../../controllers/investigator_post_controller.dart';

class WoodenBuildigOverview extends StatefulWidget {
  const WoodenBuildigOverview({super.key, required this.unit});
  final InvestigationUnit unit;
  @override
  State<WoodenBuildigOverview> createState() => _WoodenBuildigOverviewState();
}

class _WoodenBuildigOverviewState extends State<WoodenBuildigOverview> {
  final _formKey = GlobalKey<FormState>();
  final controller = InvestigatorPostController();

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
        middle: Text('建築物概要入力'),
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
                  _buildCupertinoTextField(
                    label: '建築物用途',
                    controller: controller.buildingUseController,
                  ),
                  _buildCupertinoTextField(
                      label: '構造', controller: controller.structureController),
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
                              if (_formKey.currentState!.validate()) {
                                BuildingOverview buildingOverview =
                                    controller.createBuildingOverview();
                                print('建築物名: ${buildingOverview.buildingName}');
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => WoodenSurvey(
                                          unit: widget.unit,
                                          buildingOverview: buildingOverview)),
                                );
                              }
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
