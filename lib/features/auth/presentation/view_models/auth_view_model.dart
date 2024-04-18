import 'dart:async';

import 'package:code_challenge/features/auth/domain/auth_repository.dart';
import 'package:crow/crow.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthViewModel extends ViewModel with StateMixin<dynamic> {
  final SharedPreferences _sharedPreferences;
  final AuthRepository _authRepository;
  final FlutterSecureStorage _secureStorage;
  RxInt activeIndex = 0.obs;
  String userId = '';
  bool periodicEnabled = false;
  TextEditingController filterController = TextEditingController();

  AuthViewModel(
    this._sharedPreferences,
    this._authRepository,
    this._secureStorage,
  );

  @override
  void onInit() async {
    super.onInit();
    change(null, status: RxStatus.loading());
    change(null, status: RxStatus.success());
  }

  Future<void> login(SignedIn statusLogin) async {
    if (statusLogin.user!.emailVerified) {
      _secureStorage.write(
        key: 'token',
        value: await statusLogin.user!.getIdToken(),
      );
      context.goNamed('home');
    } else {
      Get.snackbar('Warning', 'Check your email, you should verify your registration');
    }
  }

  Future<void> signUp(UserCreated statusSignup) async {
    try {
      await statusSignup.credential.user!.sendEmailVerification();
      Get.snackbar('Warning', 'Email validation sent');
    } catch (e) {
      Get.snackbar('Warning', 'Error: $e');
    }
  }
}
