import 'package:crow/crow.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SplashViewModel extends ViewModel with StateMixin {
  final FlutterSecureStorage _secureStorage;
  SplashViewModel(this._secureStorage);

  @override
  void onInit() async {
    super.onInit();
    await checkUserSession();
  }

  Future<void> checkUserSession() async {
    await Future.delayed(const Duration(seconds: 3));
    final tokenId = await _secureStorage.read(key: 'token');
    if (tokenId != null) {
      context.goNamed('home');
    } else {
      context.goNamed('login');
    }
  }
}
