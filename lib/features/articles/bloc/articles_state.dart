part of 'articles_bloc.dart';

@freezed
class ArticlesState with _$ArticlesState {
  const ArticlesState._({required this.model});
  const factory ArticlesState.error(ArticlesStateModel model) =
      ArticlesStateError;
  const factory ArticlesState.initial(ArticlesStateModel model) =
      ArticlesStateInitial;
  const factory ArticlesState.loaded(ArticlesStateModel model) =
      ArticlesStateLoaded;
  const factory ArticlesState.loading(ArticlesStateModel model) =
      ArticlesStateLoading;

  @override
  final ArticlesStateModel model;
}
