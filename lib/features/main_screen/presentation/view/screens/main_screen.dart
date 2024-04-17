import 'package:code_challenge/base/utils/namespaces/app_colors.dart';
import 'package:code_challenge/features/main_screen/presentation/view_models/main_screen_view_model.dart';
import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainScreen extends Screen<MainScreenViewModel> {
  MainScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx((user) {
      return ResponsiveBuilder(builder: (context, size) {
        return Scaffold(
          backgroundColor: AppColors.primary,
          body: viewModel.pageList.elementAt(viewModel.selectedBottomBarIndex.value),
        );
      });
    }, onLoading: Container(color: AppColors.primary, child: const Center(child: CircularProgressIndicator())));
  }
}
