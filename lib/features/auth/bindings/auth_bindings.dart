import 'package:code_challenge/features/auth/data/auth_repostory_impl.dart';
import 'package:code_challenge/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:code_challenge/features/auth/data/data_sources/auth_remote_data_source_impl.dart';
import 'package:code_challenge/features/auth/domain/auth_repository.dart';
import 'package:code_challenge/features/auth/presentation/view_models/aauth_view_model.dart';
import 'package:crow/crow.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthBinding extends Binding {
  @override
  void dependencies() {
    Get.lazyPut<AuthRemoteDataSource>(AuthRemoteDataSourceImpl.new);

    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(Get.find<AuthRemoteDataSource>()),
    );

    Get.lazyPut(
      () => AuthViewModel(
        Get.find<SharedPreferences>(),
        Get.find<AuthRepository>(),
      ),
    );
  }
}
