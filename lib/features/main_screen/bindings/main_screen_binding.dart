import 'package:code_challenge/features/home/bindings/home_bindings.dart';
import 'package:code_challenge/features/main_screen/presentation/view_models/main_screen_view_model.dart';
import 'package:crow/crow.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class MainScreenBinding extends Binding {
  @override
  void dependencies() {
    Get.lazyPut(
      () => MainScreenViewModel(Get.find<FlutterSecureStorage>()),
    );

    HomeBinding().dependencies();
  }
}
