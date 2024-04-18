import 'package:code_challenge/features/home/domain/entity/animal_entity.dart';
import 'package:crow/crow.dart';

class AnimalSpeciesResponseEntity extends Entity {
  final int? count;
  final String? category;
  final List<AnimalEntity>? animalList;

  const AnimalSpeciesResponseEntity({this.count, this.category, this.animalList});
}
