import 'package:code_challenge/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:code_challenge/features/auth/domain/auth_repository.dart';
import 'package:code_challenge/features/home/domain/entity/show_response_entity.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this._remoteDataSource);

  final AuthRemoteDataSource _remoteDataSource;

  @override
  Future<List<ShowResponseEntity>?> getShows() async {
    return await _remoteDataSource.getShows();
  }
}
