import 'package:bloc/bloc.dart';
import 'package:circle/feature/home/domain/entity/banner_entity.dart';
import 'package:circle/feature/home/domain/use_case/fetch_slider_use_case.dart';
import 'package:equatable/equatable.dart';

part 'slider_state.dart';

class SliderCubit extends Cubit<SliderState> {
  SliderCubit(this.fetchSliderUseCase) : super(SliderInitial());
  final FetchSliderUseCase fetchSliderUseCase;
  List<SliderEntity> sliderList = [];
  Future<void> getSlider() async {
    emit(SliderLoading());
    final result = await fetchSliderUseCase.call();
    result.fold((failure) => emit(SliderError(message: failure.message)), (
      sliderList,
    ) {
      this.sliderList = sliderList;
      emit(SliderSuccess(sliderList: sliderList));
    });
  }
}
