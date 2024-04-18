import 'package:code_challenge/features/animal_detail/presentation/view/widgets/desktop_animal_detail_screen.dart';
import 'package:code_challenge/features/animal_detail/presentation/view/widgets/mobile_animal_detail_screen.dart';
import 'package:code_challenge/features/animal_detail/presentation/view_models/animal_detail_view_model.dart';
import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AnimalDetailScreen extends Screen<AnimalDetailViewModel> {
  AnimalDetailScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx((state) => LayoutBuilder(
          builder: (context, constraints) => ScreenTypeLayout.builder(
            mobile: (ctx) => MobileAnimalDetailScreen(animalInfo: viewModel.animalInfo!, scientificName: viewModel.scientificName ?? ''),
            desktop: (ctx) => DesktopAnimalDetailScreen(animalInfo: viewModel.animalInfo!, scientificName: viewModel.scientificName ?? ''),
          ),
        ));
  }
}
