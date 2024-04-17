import 'package:code_challenge/base/utils/namespaces/app_colors.dart';
import 'package:code_challenge/base/utils/namespaces/app_styles.dart';
import 'package:code_challenge/features/auth/presentation/view_models/aauth_view_model.dart';
import 'package:crow/crow.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AuthScreen extends Screen<AuthViewModel> {
  AuthScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx(
      (model) {
        return ResponsiveBuilder(
          builder: (context, size) {
            return Scaffold(
                appBar: AppBar(
                  backgroundColor: AppColors.primary,
                  title: Text(
                    'Login/Signup',
                    style: AppStyles.textStyleLargeBold.copyWith(color: Colors.white),
                  ),
                ),
                backgroundColor: AppColors.primary,
                body: RegisterScreen(
                  actions: [
                    EmailLinkSignInAction((context) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => EmailLinkSignInScreen(),
                        ),
                      );
                    }),
                    AuthStateChangeAction<SignedIn>((context, state) async {
                      if (state.user!.emailVerified) {
                        print('verificata');
                      } else {
                        print('email di verifica inviata');
                        await state.user?.sendEmailVerification();
                      }
                    }),
                  ],
                )
                // SignInScreen(
                //   footerBuilder: (context, action)  {},
                //   showAuthActionSwitch: false,
                //   actions: [
                //     AuthStateChangeAction<SignedIn>((context, state) async {
                //       if (state.user!.emailVerified) {
                //         print('verificata');
                //       } else {
                //         print('email di verifica inviata');
                //         await state.user?.sendEmailVerification();
                //       }
                //     }),
                //   ],
                // ),
                );
          },
        );
      },
    );
  }
}
