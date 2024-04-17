import 'package:code_challenge/base/utils/namespaces/app_colors.dart';
import 'package:code_challenge/base/utils/namespaces/app_styles.dart';
import 'package:code_challenge/features/home/presentation/view/widgets/custom_drawer.dart';
import 'package:code_challenge/features/home/presentation/view_models/home_view_model.dart';
import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends Screen<HomeViewModel> {
  HomeScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx(
      (model) {
        return ResponsiveBuilder(builder: (context, size) {
          return Scaffold(
            drawer: CustomDrawer(
              logout: () => viewModel.logout(),
            ),
            appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.white),
              backgroundColor: AppColors.primary,
              title: Text(
                'Home',
                style: AppStyles.textStyleLargeBold.copyWith(color: Colors.white),
              ),
            ),
            backgroundColor: AppColors.primary,
            body: SingleChildScrollView(child: Text('asdas')),
          );
        });
      },
    );
  }
}
