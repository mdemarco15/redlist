import 'package:code_challenge/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:code_challenge/features/home/domain/entity/animal_by_id_response_entity.dart';
import 'package:code_challenge/features/home/domain/entity/animal_species_response_entity.dart';
import 'package:code_challenge/features/home/domain/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  HomeRepositoryImpl(this._remoteDataSource);

  final HomeRemoteDataSource _remoteDataSource;

  @override
  Future<AnimalSpeciesResponseEntity?> getAnimalSpecies() async {
    return await _remoteDataSource.getAnimalSpecies();
  }

  @override
  Future<AnimalByIdResponseEntity?> getAnimalByid(String id) async {
    return await _remoteDataSource.getAnimalById(id);
  }
}
