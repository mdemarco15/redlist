import 'package:dio/dio.dart';
import 'package:code_challenge/base/failures/server_failure/server_failure.dart';
import 'package:code_challenge/base/utils/typedefs.dart';

extension ResponseExtension<T> on Response<T> {
  ServerFailure? get failure {
    if (data == null) return null;
    if (data! is JsonObject) {
      return ServerFailure.fromJson(data! as JsonObject);
    } else if (data! is List<JsonObject>) {
      (data! as List<JsonObject>).map(ServerFailure.fromJson).first;
    }
    return null;
  }
}
