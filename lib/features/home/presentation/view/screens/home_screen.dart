import 'package:code_challenge/base/utils/namespaces/app_colors.dart';
import 'package:code_challenge/base/utils/namespaces/app_styles.dart';
import 'package:code_challenge/features/home/presentation/view/widgets/animal_item.dart';
import 'package:code_challenge/features/home/presentation/view/widgets/custom_app_bar.dart';
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
        return ResponsiveBuilder(
          builder: (context, size) {
            return Scaffold(
              key: viewModel.scaffoldKey,
              drawer: CustomDrawer(
                isDesktop: size.isDesktop,
                switchPage: (page) => viewModel.switchPage(page),
                logout: () => viewModel.logout(),
              ),
              appBar: size.isDesktop
                  ? PreferredSize(
                      preferredSize: const Size.fromHeight(80),
                      child: CustomAppBar(
                        showHamburgerIcon: false,
                        iconMenuPressed: viewModel.openDrawer,
                        title: 'RedList - SV',
                      ),
                    )
                  : AppBar(
                      iconTheme: const IconThemeData(color: Colors.white),
                      backgroundColor: AppColors.primary,
                      title: Text(
                        'Home - RedList - SV',
                        style: AppStyles.textStyleLargeBold.copyWith(color: Colors.white),
                      ),
                    ),
              backgroundColor: AppColors.primary,
              body: SizedBox(
                width: context.width,
                child: Row(
                  children: [
                    if (size.isDesktop)
                      CustomDrawer(
                        isDesktop: size.isDesktop,
                        switchPage: (page) => viewModel.switchPage(page),
                        logout: () => viewModel.logout(),
                      ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: viewModel.animals.length,
                        itemBuilder: (context, index) {
                          return AnimalItem(
                            onTap: (id) async {
                              await viewModel.showAnimalDetail(id);
                              viewModel.navigateToDetail(id);
                            },
                            animal: viewModel.animals[index],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
