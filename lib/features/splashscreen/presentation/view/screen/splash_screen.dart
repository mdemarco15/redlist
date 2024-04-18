import 'package:code_challenge/base/utils/namespaces/app_colors.dart';
import 'package:code_challenge/base/utils/namespaces/images.dart';
import 'package:code_challenge/features/splashscreen/presentation/view_model/splash_view_model.dart';
import 'package:crow/crow.dart';
import 'package:flutter/material.dart';

class SplashScreen extends Screen<SplashViewModel> {
  SplashScreen({super.key});

  @override
  Widget builder() {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(child: Images.customAsset(image: Images.logo, height: 200)),
    );
  }
}
