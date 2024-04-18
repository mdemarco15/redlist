import 'package:code_challenge/features/animal_detail/data/data_sources/animal_detail_remote_data_source.dart';
import 'package:code_challenge/features/animal_detail/data/data_sources/animal_detail_remote_data_source_impl.dart';
import 'package:code_challenge/features/animal_detail/domain/animal_detail_repository.dart';
import 'package:code_challenge/features/animal_detail/domain/animal_detail_repostory_impl.dart';
import 'package:code_challenge/features/animal_detail/presentation/view_models/animal_detail_view_model.dart';
import 'package:crow/crow.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AnimalDetailBinding extends Binding {
  @override
  void dependencies() {
    Get.lazyPut<AnimalDetailRemoteDataSource>(AnimalDetailRemoteDataSourceImpl.new);

    Get.lazyPut<AnimalDetailRepository>(
      () => AnimalDetailRepositoryImpl(Get.find<AnimalDetailRemoteDataSource>()),
    );

    Get.lazyPut(() => AnimalDetailViewModel(
          Get.find<AnimalDetailRepository>(),
          Get.find<SharedPreferences>(),
        ));
  }
}
