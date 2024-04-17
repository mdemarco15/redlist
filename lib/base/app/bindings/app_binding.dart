import 'package:code_challenge/base/app/presentation/app_view_model.dart';
import 'package:code_challenge/base/network/client_service.dart';
import 'package:code_challenge/features/auth/data/auth_repostory_impl.dart';
import 'package:code_challenge/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:code_challenge/features/auth/data/data_sources/auth_remote_data_source_impl.dart';
import 'package:code_challenge/features/auth/domain/auth_repository.dart';
import 'package:code_challenge/features/auth/presentation/view_models/aauth_view_model.dart';
import 'package:crow/crow.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppBinding extends Binding {
  @override
  Future<void> dependencies() async {
    Get.lazyPut(() => AppViewModel());
    await preferencesInit();
    _clientInit();
  }

  static Future<void> preferencesInit() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    Get.put<SharedPreferences>(preferences);
    Get.lazyPut<AuthRemoteDataSource>(AuthRemoteDataSourceImpl.new);
    Get.lazyPut<AuthRepository>(() => AuthRepositoryImpl(Get.find<AuthRemoteDataSource>()));
    Get.lazyPut(() => AuthViewModel(Get.find<SharedPreferences>(), Get.find<AuthRepository>()));
    FlutterSecureStorage storage = const FlutterSecureStorage();
    Get.put<FlutterSecureStorage>(storage);
  }

  static void _clientInit() {
    Get.put<ApiClient>(
      ApiClient(),
    );
  }
}
