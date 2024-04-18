import 'package:code_challenge/features/animal_detail/data/data_sources/animal_detail_remote_data_source.dart';
import 'package:code_challenge/features/animal_detail/domain/animal_detail_repository.dart';
import 'package:code_challenge/features/animal_detail/domain/entity/extended_animal_info_response_entity.dart';

class AnimalDetailRepositoryImpl extends AnimalDetailRepository {
  AnimalDetailRepositoryImpl(this._remoteDataSource);

  final AnimalDetailRemoteDataSource _remoteDataSource;

  @override
  Future<ExtendedAnimalInfoResponseEntity?> getAnimalNarrative(String id) async {
    return await _remoteDataSource.getAnimalNarrative(id);
  }
}
