import 'dart:async';
import 'dart:convert';

import 'package:code_challenge/base/router/app_routes.dart';
import 'package:code_challenge/features/auth/domain/auth_repository.dart';
import 'package:code_challenge/features/home/data/models/show_response_model.dart';
import 'package:code_challenge/features/home/domain/entity/show_response_entity.dart';
import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthViewModel extends ViewModel with StateMixin<dynamic> {
  final SharedPreferences _sharedPreferences;
  final AuthRepository _authRepository;
  AuthViewModel(
    this._sharedPreferences,
    this._authRepository,
  );

  RxInt activeIndex = 0.obs;

  String userId = '';
  bool periodicEnabled = false;

  List<ShowResponseEntity>? shows;
  List<ShowResponseEntity>? filteredShows;

  TextEditingController filterController = TextEditingController();
  @override
  void onInit() async {
    change(null, status: RxStatus.loading());
    await initAuthentication();
    change(null, status: RxStatus.success());
    super.onInit();
  }

  Future<void> initAuthentication() async {
    shows = await _authRepository.getShows();
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
