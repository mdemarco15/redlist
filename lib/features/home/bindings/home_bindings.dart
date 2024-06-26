import 'package:crow/crow.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:code_challenge/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:code_challenge/features/home/data/data_sources/home_remote_data_source_impl.dart';
import 'package:code_challenge/features/home/data/home_repostory_impl.dart';
import 'package:code_challenge/features/home/domain/home_repository.dart';
import 'package:code_challenge/features/home/presentation/view_models/home_view_model.dart';

class HomeBinding extends Binding {
  @override
  void dependencies() {
    Get.lazyPut<HomeRemoteDataSource>(HomeRemoteDataSourceImpl.new);

    Get.lazyPut<HomeRepository>(
      () => HomeRepositoryImpl(Get.find<HomeRemoteDataSource>()),
    );

    Get.lazyPut(() => HomeViewModel(
          Get.find<HomeRepository>(),
          Get.find<SharedPreferences>(),
        ));
  }
}
