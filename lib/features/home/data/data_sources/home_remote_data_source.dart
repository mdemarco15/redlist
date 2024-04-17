import 'package:code_challenge/base/contracts/data/data_sources/remote_data_source.dart';
import 'package:code_challenge/features/home/domain/entity/show_response_entity.dart';

abstract class HomeRemoteDataSource extends RemoteDataSource {
  Future<List<ShowResponseEntity>?> getShows();
}
