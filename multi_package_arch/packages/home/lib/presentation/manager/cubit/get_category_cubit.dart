import 'package:bloc/bloc.dart';
import 'package:core/error/failure.dart';
import 'package:equatable/equatable.dart';
import 'package:home/domain/entities/category_entity.dart';
import 'package:home/domain/usecases/fetch_category_use_case.dart';

part 'get_category_state.dart';

class GetCategoryCubit extends Cubit<GetCategoryState> {
  GetCategoryCubit(this.fetchCategoryUseCase) : super(GetCategoryInitial());
  final FetchCategoryUseCase fetchCategoryUseCase;
  List<CategoryEntity> categories = [];

  Future<void> getCategory() async {
    emit(GetCategoryLoading());
    final result = await fetchCategoryUseCase.call();
    result.fold((failure) => emit(GetCategoryFailure(error: failure.message)),
        (categories) {
      this.categories = categories;
      emit(GetCategorySuccess());
    });
  }
}
