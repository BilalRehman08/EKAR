import 'dart:io';
import 'package:ekar_project/env/env.dart';
import 'package:ekar_project/model/vehicle_images.dart';
import 'package:ekar_project/model/vehicle_model.dart';
import 'api_client.dart';

class ApiService {
  final ApiClient apiClient = ApiClient();

  Future<VehicleModel> getCarSpecs() async {
    final queryParameters = {
      'key': Env.apiKey,
      'vin': Env.vin,
    };
    try {
      final response =
          await apiClient.get(endPoint: 'specs', params: queryParameters);

      if (response.statusCode == HttpStatus.ok) {
        return VehicleModel.fromJson(response.data);
      } else {
        throw Exception("Failed to load data");
      }
    } catch (e) {
      throw Exception('Failed to get car specs: $e');
    }
  }

  Future<VehicleImages> getCarImages({
    required String year,
    required String make,
    required String model,
  }) async {
    final queryParameters = {
      'key': Env.apiKey,
      'year': year,
      'make': make,
      'model': model,
    };
    try {
      final response =
          await apiClient.get(endPoint: 'images', params: queryParameters);

      if (response.statusCode == HttpStatus.ok) {
        return VehicleImages.fromJson(response.data);
      } else {
        throw Exception("Failed to load data");
      }
    } catch (e) {
      throw Exception('Failed to get car specs: $e');
    }
  }
}
