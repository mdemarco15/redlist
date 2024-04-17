import 'package:code_challenge/base/utils/namespaces/app_colors.dart';
import 'package:code_challenge/base/utils/namespaces/app_styles.dart';
import 'package:code_challenge/features/auth/presentation/view_models/auth_view_model.dart';
import 'package:crow/crow.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthScreen extends Screen<AuthViewModel> {
  AuthScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx(
      (model) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.primary,
            title: Text(
              'RedList',
              style: AppStyles.textStyleLargeBold.copyWith(color: Colors.white),
            ),
          ),
          backgroundColor: AppColors.primary,
          body: SignInScreen(
            actions: [
              AuthStateChangeAction<SignedIn>(
                (context, state) async {
                  await viewModel.login(state);
                },
              ),
              AuthStateChangeAction<UserCreated>(
                (context, state) async {
                  state.credential.user!.sendEmailVerification();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
