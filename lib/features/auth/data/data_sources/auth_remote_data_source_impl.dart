import 'package:dio/dio.dart';
import 'package:code_challenge/base/api/endpoints.dart';
import 'package:code_challenge/base/utils/logger.dart';
import 'package:code_challenge/base/utils/typedefs.dart';
import 'package:code_challenge/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:code_challenge/features/home/data/models/show_response_model.dart';
import 'package:code_challenge/features/home/domain/entity/show_response_entity.dart';

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  @override
  Future<List<ShowResponseEntity>?> getShows() async {
    try {
      Logger.trying('getShows', runtimeType);
      final Response<List<dynamic>> response = await client.get(
        endpoint: Endpoints.baseUrl,
      );

      if (response.data == null) return null;
      Logger.success('getShows', runtimeType);
      return response.data!.map((e) {
        return ShowResponseModel.fromJson(e as JsonObject).toEntity();
      }).toList();
    } catch (e, stackTrace) {
      Logger.errorLog(e, stackTrace, runtimeType);
    }
    return null;
  }
}
