import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../constants/api_constants.dart';

import '../di/providers.dart';   // ← add this line
part 'dio_client.g.dart';
@Riverpod(keepAlive: true)
Dio dioClient(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      headers: {'Content-Type': 'application/json'},
    ),
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        final storage = ref.read(secureStorageServiceProvider);
        final token = await storage.read('access_token');
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        handler.next(options);
      },
      onError: (error, handler) async {
        if (error.response?.statusCode == 401) {
          final storage = ref.read(secureStorageServiceProvider);
          final refreshToken = await storage.read('refresh_token');
          if (refreshToken != null) {
            try {
              final refreshDio = Dio(
                BaseOptions(
                  baseUrl: ApiConstants.baseUrl,
                  connectTimeout: const Duration(seconds: 15),
                  receiveTimeout: const Duration(seconds: 15),
                ),
              );
              final response = await refreshDio.post(
                ApiConstants.refreshToken,
                data: {'refreshToken': refreshToken},
              );
              final data = response.data['data'];
              final newAccessToken = data['accessToken'] as String;
              final newRefreshToken = data['refreshToken'] as String;
              await storage.write('access_token', newAccessToken);
              await storage.write('refresh_token', newRefreshToken);
              error.requestOptions.headers['Authorization'] =
                  'Bearer $newAccessToken';
              final retryResponse =
                  await dio.fetch(error.requestOptions);
              return handler.resolve(retryResponse);
            } catch (_) {
              await storage.delete('access_token');
              await storage.delete('refresh_token');
            }
          }
        }
        handler.next(error);
      },
    ),
  );

  return dio;
}