import 'dart:async';

import 'package:code_challenge/base/router/app_routes.dart';
import 'package:code_challenge/features/auth/domain/auth_repository.dart';
import 'package:code_challenge/features/home/domain/entity/show_response_entity.dart';
import 'package:crow/crow.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthViewModel extends ViewModel with StateMixin<dynamic> {
  final SharedPreferences _sharedPreferences;
  final AuthRepository _authRepository;
  final FlutterSecureStorage _secureStorage;
  AuthViewModel(
    this._sharedPreferences,
    this._authRepository,
    this._secureStorage,
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

  void resetFilter() {
    filteredShows = shows;
    update();
  }

  void filterShows(String value) {
    filteredShows = shows?.where((element) => element.show!.name!.toLowerCase().contains(value.toLowerCase())).toList();
    update();
  }

  Future<void> login(SignedIn statusLogin) async {
    if (statusLogin.user!.emailVerified) {
      _secureStorage.write(
        key: 'token',
        value: await statusLogin.user!.getIdToken(),
      );
      Get.offAllNamed(Routes.home);
    } else {
      Get.snackbar('Warning', 'Check your email, you should verify your registration');
    }
  }
}
