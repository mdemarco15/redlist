import 'package:code_challenge/features/splashscreen/presentation/view_model/splash_view_model.dart';
import 'package:crow/crow.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class SplashBinding extends Binding {
  @override
  void dependencies() {
    // Get.lazyPut<AuthRepository>(
    //   () => AuthRepositoryImpl(
    //     Get.find<AuthDataSources>(),
    //   ),
    // );
    Get.lazyPut(() => SplashViewModel(Get.find<FlutterSecureStorage>()));
  }
}
