import 'package:code_challenge/features/home/domain/entity/animal_by_id_response_entity.dart';
import 'package:code_challenge/features/home/domain/entity/animal_species_response_entity.dart';
import 'package:crow/crow.dart';

abstract class HomeRepository extends Repository {

  Future<AnimalSpeciesResponseEntity?> getAnimalSpecies();
  Future<AnimalByIdResponseEntity?> getAnimalByid(String id);
}
