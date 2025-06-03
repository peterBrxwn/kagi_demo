part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const CategoryState._({required this.model});
  const factory CategoryState.error(CategoryStateModel model) =
      CategoryStateError;
  const factory CategoryState.initial(CategoryStateModel model) =
      CategoryStateInitial;
  const factory CategoryState.loaded(CategoryStateModel model) =
      CategoryStateLoaded;
  const factory CategoryState.loading(CategoryStateModel model) =
      CategoryStateLoading;

  @override
  final CategoryStateModel model;
}
