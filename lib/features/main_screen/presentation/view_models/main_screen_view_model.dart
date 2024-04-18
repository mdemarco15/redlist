import 'package:code_challenge/features/auth/presentation/view/screens/auth_screen.dart';
import 'package:code_challenge/features/home/presentation/view/screens/home_screen.dart';
import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class MainScreenViewModel extends ViewModel with StateMixin {
  final FlutterSecureStorage _secureStorage;
  MainScreenViewModel(this._secureStorage);

  RxInt selectedBottomBarIndex = 0.obs;
  String userId = '';

  List<Widget> pageList = [AuthScreen(), HomeScreen()];

  @override
  void onInit() async {
    change(null, status: RxStatus.loading());
    change(null, status: RxStatus.success());
    final tokenId = await _secureStorage.read(key: 'token');
    if (tokenId != null) {
      context.goNamed('home');
    }
    super.onInit();
  }

  void switchPage(int page) {
    selectedBottomBarIndex.value = page;
    update();
  }

  Future<void> logout() async {
    try {
      await _secureStorage.delete(key: 'token');
      context.goNamed('login');
    } catch (e) {
      Get.snackbar('Warning', 'Error: $e');
    }
  }
}
