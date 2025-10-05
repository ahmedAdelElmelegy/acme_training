import 'package:core/data/app_url/app_url.dart';
import 'package:core/data/data_source/api_services.dart';
import 'package:home/data/models/slider_model/slider.dart';
import 'package:home/domain/entities/category_entity.dart';
import 'package:home/domain/entities/slider_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<SliderEntity>> getSliders();
  Future<List<CategoryEntity>> getCategories();
}

class HomeRemoteDataSourceImplement implements HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImplement({required this.apiService});

  @override
  Future<List<SliderEntity>> getSliders() async {
    final response = await apiService.get(endpoint: AppURL.sliderUrl);
    List<SliderEntity> sliderList = [];
    for (var element in response['data']['slider']) {
      sliderList.add(Slider.fromJson(element));
    }
    return sliderList;
  }

  @override
  Future<List<CategoryEntity>> getCategories() async {
    final response = await apiService.get(endpoint: AppURL.categoryUrl);
    List<CategoryEntity> categoryList = [];
    for (var element in response['data']) {
      categoryList.add(CategoryEntity.fromJson(element));
    }
    return categoryList;
  }
}
