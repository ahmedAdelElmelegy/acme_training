import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:localization_task/core/constants/app_url.dart';
import 'package:localization_task/core/error/failure.dart';
import 'package:localization_task/core/network/api_services.dart';

class LocalizationRepo {
  final ApiService apiService;
  LocalizationRepo(this.apiService);

  Future<Either<Failure, Map<String, dynamic>>> fetchAndSaveJson({
    required String savePath,
  }) async {
    try {
      final response = await apiService.get(endpoint: AppURL.localization);

      if (response.data == null || response.data.toString().isEmpty) {
        return Left(ServerFailure('Empty JSON response'));
      }

      final Map<String, dynamic> data = response.data;

      await _saveToSpecificPath(jsonData: data, targetPath: savePath);

      return Right(data);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<void> _saveToSpecificPath({
    required Map<String, dynamic> jsonData,
    required String targetPath,
  }) async {
    try {
      final file = File(targetPath);

      await file.parent.create(recursive: true);

      if (await file.exists()) {
        await file.delete();
        print('🗑 Old file deleted at $targetPath');
      }

      await file.writeAsString(json.encode(jsonData), flush: true);
      print('✅ New JSON saved at: $targetPath');
    } catch (e) {
      print('❌ Error saving file: $e');
    }
  }

  Future<Map<String, dynamic>?> loadLocalJson({required String path}) async {
    try {
      final file = File(path);
      if (await file.exists()) {
        final content = await file.readAsString();
        if (content.isEmpty) return null;
        return json.decode(content);
      }
      print('⚠️ File not found at $path');
      return null;
    } catch (e) {
      print('❌ Error loading file: $e');
      return null;
    }
  }
}
