import 'package:code_challenge/features/animal_detail/domain/entity/extended_animal_info_response_entity.dart';
import 'package:crow/crow.dart';

abstract class AnimalDetailRepository extends Repository {
  Future<ExtendedAnimalInfoResponseEntity?> getAnimalNarrative(String id);
}
