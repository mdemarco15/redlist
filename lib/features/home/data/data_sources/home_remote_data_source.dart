import 'package:code_challenge/base/contracts/data/data_sources/remote_data_source.dart';
import 'package:code_challenge/features/home/domain/entity/animal_by_id_response_entity.dart';
import 'package:code_challenge/features/home/domain/entity/animal_species_response_entity.dart';

abstract class HomeRemoteDataSource extends RemoteDataSource {
  Future<AnimalSpeciesResponseEntity?> getAnimalSpecies();
  Future<AnimalByIdResponseEntity?> getAnimalById(String id);
}
