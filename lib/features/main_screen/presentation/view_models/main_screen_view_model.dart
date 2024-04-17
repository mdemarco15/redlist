import 'package:code_challenge/features/auth/presentation/view/screens/auth_screen.dart';
import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreenViewModel extends ViewModel with StateMixin {
  MainScreenViewModel();

  RxInt selectedBottomBarIndex = 0.obs;
  String userId = '';

  List<Widget> pageList = [
    AuthScreen(),
  ];

  @override
  void onInit() async {
    change(null, status: RxStatus.loading());
    change(null, status: RxStatus.success());
    super.onInit();
  }

  void switchPage(int page) {
    selectedBottomBarIndex.value = page;
    update();
  }
}
