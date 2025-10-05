import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:home/domain/entities/slider_entity.dart';
import 'package:home/domain/usecases/fetch_slider_use_case.dart';

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
