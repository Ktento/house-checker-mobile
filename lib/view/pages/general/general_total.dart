import 'package:flutter/cupertino.dart';
import '../../wigets/card/total.dart';
import '../../wigets/card/progress_rate.dart';
import '../../wigets/card/work_status.dart';
import '../../wigets/card/judgment_status_pie_chart.dart';
import '../../wigets/card/days_bargraph.dart';
import '../../wigets/card/regional_statistics.dart';
import '../../../models/dashboard_model.dart';
import '../../../view_model/dashboard_view_model.dart';
import 'package:provider/provider.dart';

class generalTotal extends StatefulWidget {
  const generalTotal({super.key});

  @override
  State<generalTotal> createState() => _generalTotalState();
}

class _generalTotalState extends State<generalTotal> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<DashboardViewModel>();

    return CupertinoPageScaffold(
      child: LayoutBuilder(
        builder: (context, constraints) {
          // 画面の横幅
          final screenWidth = constraints.maxWidth;
          // Row全体の幅（BuildingCt4つ＋隙間3つ）
          const totalWidth = (120 * 4) + (12 * 3);
          // 左端の位置を計算
          final sidePadding = (screenWidth - totalWidth) / 2;
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                // 中央に配置された4つのカード
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BuildingCt(data: viewModel.dashboardData!),
                    SizedBox(width: 12),
                    EndBuildingCt(data: viewModel.dashboardData!),
                    SizedBox(width: 12),
                    RiskBuildingCt(data: viewModel.dashboardData!),
                    SizedBox(width: 12),
                    WaitingBuildingCt(data: viewModel.dashboardData!),
                  ],
                ),

                const SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: sidePadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(children: [
                        ProgressRate(data: viewModel.dashboardData!),
                        const SizedBox(
                          height: 16,
                        ),
                        PieChartStatus(data: viewModel.dashboardData!),
                      ]),
                      WorkStatus(),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: sidePadding),
                  child: Column(children: [
                    DaysBarGraph(data: viewModel.dashboardData!),
                    const SizedBox(height: 16),
                    RegionalStatistics(data: viewModel.dashboardData!),
                  ]),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
