import 'package:code_challenge/base/api/endpoints.dart';
import 'package:code_challenge/base/api/keys.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ApiClient {
  Dio dio = Dio();
  final FlutterSecureStorage storage = const FlutterSecureStorage();
  ApiClient() {
    BaseOptions options = BaseOptions(
      baseUrl: Endpoints.baseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
    );

    dio = Dio(options);
    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) {
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException e, handler) async {
          return handler.next(e);
        },
      ),
    );
  }

  Future<Response<T>> get<T>({required String endpoint, Map<String, dynamic>? queryParameters}) async {
    try {
      queryParameters ??= {};
      queryParameters.addAll({'token': Keys.token});
      return await dio.get(
        endpoint,
        queryParameters: queryParameters,
        options: Options(),
      );
    } on DioException catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
      rethrow;
    }
  }

  Future<Response> post({required String endpoint, dynamic data, Map<String, dynamic>? queryParameters}) async {
    String? token = await storage.read(key: "token");
    try {
      return await dio.post(endpoint,
          data: data,
          queryParameters: queryParameters,
          options: Options(headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          }));
    } catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
      rethrow;
    }
  }

  Future<Response> put(String endpoint, dynamic data, Map<String, dynamic>? queryParameters) async {
    String? token = await storage.read(key: "token");
    try {
      return await dio.put(endpoint,
          data: data,
          queryParameters: queryParameters,
          options: Options(headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          }));
    } catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
      rethrow;
    }
  }

  Future<Response> delete(String endpoint, Map<String, dynamic>? queryParameters) async {
    String? token = await storage.read(key: "token");
    try {
      return await dio.delete(endpoint,
          queryParameters: queryParameters,
          options: Options(headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          }));
    } catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
      rethrow;
    }
  }
}
