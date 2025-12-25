import 'package:flutter/cupertino.dart';
import '../../wigets/card/todotask.dart';
import '../../../view_model/dashboard_view_model.dart';
import 'package:provider/provider.dart';

class InvestigatorTask extends StatelessWidget {
  const InvestigatorTask({super.key});
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<DashboardViewModel>();
    return CupertinoPageScaffold(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TODOTasks(viewModel: viewModel),
        )),
      ],
    ));
  }
}
