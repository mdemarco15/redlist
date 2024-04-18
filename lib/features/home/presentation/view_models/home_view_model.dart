import 'dart:async';

import 'package:code_challenge/base/router/app_routes.dart';
import 'package:code_challenge/features/home/domain/entity/animal_by_id_entity.dart';
import 'package:code_challenge/features/home/domain/entity/animal_entity.dart';
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
  TextEditingController filterController = TextEditingController();
  List<AnimalEntity> animals = [];
  AnimalByIdEntity? animalSearched;

  HomeViewModel(
    this._homeRepository,
    this._sharedPreferences,
    this._secureStorage,
  );

  @override
  void onInit() async {
    change(null, status: RxStatus.loading());
    await initAnimals();
    change(null, status: RxStatus.success());
    super.onInit();
  }

  void switchPage(int page) {
    selectedBottomBarIndex.value = page;
    closeDrawer();
    update();
  }

  Future<void> logout() async {
    try {
      await _secureStorage.delete(key: 'token');
      await Get.offAllNamed(Routes.login);
    } catch (e) {
      Get.snackbar('Warning', 'Error: $e');
    }
  }

  Future<void> initAnimals() async {
    change(null, status: RxStatus.loading());
    var response = await _homeRepository.getAnimalSpecies();
    if (response != null) {
      animals = response.animalList!;
    }
    update();
    change(animals, status: RxStatus.success());
  }

  Future<void> showAnimalDetail(int id) async {
    var response = await _homeRepository.getAnimalByid(id.toString());
    if (response != null) {
      animalSearched = response.result!.first;
    }
    update();
  }

  void navigateToDetail(int? id) {
    _sharedPreferences.setInt('id', animalSearched!.taxonid!);
    _sharedPreferences.setString('name', animalSearched!.scientificName!);
    Get.toNamed(Routes.animalDetail, arguments: {
      'id': animalSearched?.taxonid,
      'name': animalSearched?.scientificName,
    });
  }

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState?.closeDrawer();
  }

  void openNotificationsDrawer() {
    scaffoldKey.currentState?.openEndDrawer();
  }

  void closeNotificationsDrawer() {
    scaffoldKey.currentState?.closeEndDrawer();
  }
}
