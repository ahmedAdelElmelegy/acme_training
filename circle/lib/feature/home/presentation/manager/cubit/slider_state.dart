part of 'slider_cubit.dart';

sealed class SliderState extends Equatable {
  const SliderState();

  @override
  List<Object> get props => [];
}

final class SliderInitial extends SliderState {}

final class SliderLoading extends SliderState {}

final class SliderSuccess extends SliderState {
  final List<SliderEntity> sliderList;
  const SliderSuccess({required this.sliderList});
}

final class SliderError extends SliderState {
  final String message;
  const SliderError({required this.message});
}
