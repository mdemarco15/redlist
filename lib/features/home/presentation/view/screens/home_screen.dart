import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:code_challenge/base/utils/namespaces/app_colors.dart';
import 'package:code_challenge/base/utils/namespaces/app_styles.dart';
import 'package:code_challenge/features/home/presentation/view/widgets/show_grid.dart';
import 'package:code_challenge/features/home/presentation/view/widgets/show_list.dart';
import 'package:code_challenge/features/home/presentation/view_models/home_view_model.dart';

class HomeScreen extends Screen<HomeViewModel> {
  HomeScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx(
      (model) {
        return ResponsiveBuilder(builder: (context, size) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.primary,
              title: Text(
                'Home',
                style: AppStyles.textStyleLargeBold.copyWith(color: Colors.white),
              ),
            ),
            backgroundColor: AppColors.primary,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        controller: viewModel.filterController,
                        onChanged: (value) => viewModel.filterShows(value),
                        decoration: const InputDecoration(
                          hintText: 'Search',
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  viewModel.filteredShows == null || viewModel.filteredShows!.isEmpty
                      ? Center(
                          child: Text(
                            'Nessun Programma disponibile',
                            style: AppStyles.textStyleLargeBold.copyWith(color: Colors.white),
                          ),
                        )
                      : size.deviceScreenType == DeviceScreenType.desktop || size.deviceScreenType == DeviceScreenType.tablet
                          ? ShowGrid(
                              viewModel: viewModel,
                            )
                          : ShowList(
                              viewModel: viewModel,
                            )
                ],
              ),
            ),
          );
        });
      },
    );
  }
}
