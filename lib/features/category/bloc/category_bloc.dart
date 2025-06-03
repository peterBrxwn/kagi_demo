// Dart imports:
import 'dart:async';

// Package imports:
import 'package:bloc_notification/bloc_notification.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:kagi_demo/core/notifications/notification.dart';
import 'package:kagi_demo/core/notifications/type.dart';
import 'package:kagi_demo/features/category/model/category_api_params_model.dart';
import 'package:kagi_demo/features/category/model/category_state_model.dart';
import 'package:kagi_demo/features/category/repo/category.dart';

part 'category_bloc.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState>
    with BlocNotificationMixin<CategoryState, Notification> {
  CategoryBloc({required CategoryRepo categoryRepo})
    : _categoryRepo = categoryRepo,
      super(const CategoryState.initial(CategoryStateModel())) {
    on<_Fetch>(_fetch);
  }
  final CategoryRepo _categoryRepo;

  Future<void> _fetch(_Fetch event, Emitter<CategoryState> emit) async {
    emit(CategoryState.loading(state.model));

    try {
      final res = await _categoryRepo.list(
        param: const CategoryApiParamModel(endpoint: 'kite.json'),
      );
      res.fold(
        (l) {
          notify(const Notification());
          emit(CategoryState.error(state.model));
        },
        (r) {
          notify(
            const Notification(
              message: 'Categories fetched successfully.',
              type: NotificationType.success,
            ),
          );
          emit(CategoryState.loaded(state.model.copyWith(data: r)));
        },
      );
    } catch (e) {
      notify(const Notification());
    }
  }
}
