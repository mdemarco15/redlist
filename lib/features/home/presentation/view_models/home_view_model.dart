import 'dart:async';

import 'package:code_challenge/base/router/app_routes.dart';
import 'package:code_challenge/features/home/domain/entity/show_response_entity.dart';
import 'package:code_challenge/features/home/domain/home_repository.dart';
import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeViewModel extends ViewModel with StateMixin<dynamic> {
  final FlutterSecureStorage _secureStorage;
  final HomeRepository _homeRepository;
  final SharedPreferences _sharedPreferences;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>(); 
  RxInt activeIndex = 0.obs;
  RxInt selectedBottomBarIndex = 0.obs;
  String userId = '';
  bool periodicEnabled = false;
  List<ShowResponseEntity>? shows;
  List<ShowResponseEntity>? filteredShows;
  TextEditingController filterController = TextEditingController();
  
  HomeViewModel(
    this._homeRepository,
    this._sharedPreferences,
    this._secureStorage,
  );

  @override
  void onInit() async {
    change(null, status: RxStatus.loading());
    change(null, status: RxStatus.success());
    super.onInit();
  }
  void switchPage(int page) {
    selectedBottomBarIndex.value = page;
    closeDrawer();
    update();
  }

  void closeDrawer() {
    scaffoldKey.currentState?.closeDrawer();
  }

  Future<void> logout() async {
    try {
      await _secureStorage.delete(key: 'token');
      await Get.offAllNamed(Routes.login);
    } catch (e) {
      Get.snackbar('Warning', 'Error: $e');
    }
  }
}
