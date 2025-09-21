import 'package:circle/core/data/app_url/app_url.dart';
import 'package:circle/core/data/data_source/api_services.dart';
import 'package:circle/feature/home/data/model/slider_model/slider.dart';
import 'package:circle/feature/home/domain/entity/banner_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<SliderEntity>> getSliders();
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
}
