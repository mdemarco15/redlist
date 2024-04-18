import 'package:code_challenge/features/animal_detail/domain/animal_detail_repository.dart';
import 'package:code_challenge/features/animal_detail/domain/entity/extended_info_entity.dart';
import 'package:crow/crow.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AnimalDetailViewModel extends ViewModel with StateMixin<dynamic> {
  AnimalDetailViewModel(this._animalDetailRepository, this._sharedPreferences);

  final AnimalDetailRepository _animalDetailRepository;
  final SharedPreferences _sharedPreferences;

  ExtendedInfoEntity? animalInfo;
  int? id;
  String? scientificName;

  @override
  void onInit() async {
    super.onInit();
    change(null, status: RxStatus.loading());
    var args = Get.arguments;
    if (args != null) {
      id = args['id'];
      scientificName = args['name'];
    } else {
      id = _sharedPreferences.getInt('id');
      scientificName = _sharedPreferences.getString('name');
    }
    await initNarrative();
    change(null, status: RxStatus.success());
  }

  Future<void> initNarrative() async {
    var response = await _animalDetailRepository.getAnimalNarrative(id.toString());
    if (response != null) {
      animalInfo = response.result!.first;
    }
  }
}
