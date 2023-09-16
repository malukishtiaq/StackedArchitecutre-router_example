import 'package:flutter/material.dart';
import 'package:example/ui/startup/startup_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StackedView<StartupVieWModel> {
  const StartupView({super.key});

  @override
  Widget builder(
    BuildContext context,
    StartupVieWModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => viewModel.navigateToBottomNavExample(),
              child: const Text(
                'navigateToBottomNavExample',
              ),
            ),
            ElevatedButton(
              onPressed: () => viewModel.replaceWithStreamCounterView(),
              child: const Text(
                'navigateToHistoryView',
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  StartupVieWModel viewModelBuilder(BuildContext context) {
    return StartupVieWModel();
  }

  @override
  void onViewModelReady(StartupVieWModel viewModel) {
    viewModel.initialise();
    super.onViewModelReady(viewModel);
  }
}
