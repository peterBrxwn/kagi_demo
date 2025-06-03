// Package imports:
import 'package:bloc_notification/bloc_notification.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// Project imports:
import 'package:kagi_demo/core/notifications/notification.dart';
import 'package:kagi_demo/features/articles/model/articles_api_params_model.dart';
import 'package:kagi_demo/features/articles/model/articles_state_model.dart';
import 'package:kagi_demo/features/articles/repo/articles_repo.dart';

part 'articles_bloc.freezed.dart';
part 'articles_event.dart';
part 'articles_state.dart';

class ArticlesBloc extends Bloc<ArticlesEvent, ArticlesState>
    with BlocNotificationMixin<ArticlesState, Notification> {
  ArticlesBloc({required String category, required ArticlesRepo newsRepo})
    : _category = category,
      _newsRepo = newsRepo,
      super(const ArticlesState.initial(ArticlesStateModel())) {
    on<_Fetch>(_fetch);
  }
  final ArticlesRepo _newsRepo;
  final String _category;

  Future<void> _fetch(_Fetch event, Emitter<ArticlesState> emit) async {
    emit(ArticlesState.loading(state.model));

    try {
      final res = await _newsRepo.list(
        param: ArticlesApiParamModel(endpoint: _category),
      );
      res.fold(
        (l) {
          notify(const Notification());
          emit(ArticlesState.error(state.model));
        },
        (r) {
          emit(ArticlesState.loaded(state.model.copyWith(data: r)));
        },
      );
    } catch (e) {
      notify(const Notification());
    }
  }
}
