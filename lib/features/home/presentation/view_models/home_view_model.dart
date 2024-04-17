import 'dart:async';
import 'dart:convert';
import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:code_challenge/base/router/app_routes.dart';
import 'package:code_challenge/features/home/data/models/show_response_model.dart';
import 'package:code_challenge/features/home/domain/entity/show_response_entity.dart';
import 'package:code_challenge/features/home/domain/home_repository.dart';

class HomeViewModel extends ViewModel with StateMixin<dynamic> {
  HomeViewModel(this._homeRepository, this._sharedPreferences);

  final HomeRepository _homeRepository;
  final SharedPreferences _sharedPreferences;

  RxInt activeIndex = 0.obs;

  String userId = '';
  bool periodicEnabled = false;

  List<ShowResponseEntity>? shows;
  List<ShowResponseEntity>? filteredShows;

  TextEditingController filterController = TextEditingController();
  @override
  void onInit() async {
    change(null, status: RxStatus.loading());
    await initShows();
    change(null, status: RxStatus.success());
    super.onInit();
  }

  Future<void> initShows() async {
    shows = await _homeRepository.getShows();
    filteredShows = shows;
  }

  void navigateToDetail(ShowResponseEntity show) {
    _sharedPreferences.setString('show', jsonEncode(ShowResponseModel.fromEntity(show).toJson()));
    Get.toNamed(Routes.showDetail);
  }

  void resetFilter() {
    filteredShows = shows;
    update();
  }

  void filterShows(String value) {
    filteredShows = shows?.where((element) => element.show!.name!.toLowerCase().contains(value.toLowerCase())).toList();
    update();
  }
}
