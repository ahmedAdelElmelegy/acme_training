import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:localization_task/core/error/failure.dart';
import 'package:localization_task/feature/home/data/repo/localization_repo.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

part 'local_state.dart';

class LocalCubit extends Cubit<LocalState> {
  LocalCubit(this.localizationRepo) : super(LocalInitial());

  final LocalizationRepo localizationRepo;
  Map<String, dynamic> json = {};

  /// 🧩 Fetch JSON from API and save it to local file
  Future<void> fetchAndSaveJson() async {
    emit(LocalLoading());
    try {
      // final dir = await getApplicationDocumentsDirectory();
      final path =
          r'C:\Users\Ahmed\Desktop\acme_traning\localization_task\assets\translation\en.json';

      // Fetch + Save using repo
      final result = await localizationRepo.fetchAndSaveJson(savePath: path);

      result.fold((failure) => emit(LocalError(failure)), (data) {
        json = data;
        emit(LocalSuccess(json));
      });
    } catch (e) {
      emit(LocalError(ServerFailure(e.toString())));
    }
  }

  Future<void> loadLocalJson() async {
    emit(LocalLoading());
    try {
      // final dir = await getApplicationDocumentsDirectory();
      final path =
          r'C:\Users\Ahmed\Desktop\acme_traning\localization_task\assets\translation\en.json';

      final data = await localizationRepo.loadLocalJson(path: path);

      if (data != null) {
        json = data;
        emit(LocalSuccess(json));
      } else {
        emit(LocalError(ServerFailure('No local data found')));
      }
    } catch (e) {
      emit(LocalError(ServerFailure(e.toString())));
    }
  }

  /// 🗑 Delete local file (optional helper)
  Future<void> deleteLocalJson() async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final path = '${dir.path}/translation/en.json';
      final file = File(path);

      if (await file.exists()) {
        await file.delete();
        print('🗑 JSON file deleted: $path');
      }
    } catch (e) {
      print('❌ Error deleting local JSON: $e');
    }
  }
}
