import 'dart:io';
import 'package:dio/dio.dart';

class ApiClient {
  Dio _dio = Dio();

  ApiClient() {
    BaseOptions options = BaseOptions(
      baseUrl: "https://api.carsxe.com/",
    );

    _dio = Dio(options);
  }

  Future<dynamic> get({
    required String endPoint,
    Map<String, dynamic>? params,
  }) async {
    try {
      Response response = await _dio.get(endPoint, queryParameters: params);

      if (response.statusCode == HttpStatus.ok) {
        return response;
      } else {
        throw Exception("Failed to load data");
      }
    } catch (e) {
      throw Exception("Failed to load data");
    }
  }
}
