// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:kagi_demo/core/errors/app_error.dart';
import 'package:kagi_demo/features/category/bloc/category_bloc.dart';
import 'package:kagi_demo/features/category/model/category_api_params_model.dart';
import 'package:kagi_demo/features/category/model/category_api_response_model.dart';
import 'package:kagi_demo/features/category/model/category_model.dart';
import 'package:kagi_demo/features/category/model/category_state_model.dart';
import 'package:kagi_demo/features/category/repo/category_repo.dart';

// Define a fake for CategoryApiParamModel
class FakeCategoryApiParamModel extends Fake implements CategoryApiParamModel {}

class MockCategoryRepo extends Mock implements CategoryRepo {}

void main() {
  late CategoryBloc categoryBloc;
  late MockCategoryRepo mockCategoryRepo;

  setUpAll(() {
    // Register the fake as a fallback value
    registerFallbackValue(FakeCategoryApiParamModel());
  });

  setUp(() {
    mockCategoryRepo = MockCategoryRepo();
    categoryBloc = CategoryBloc(categoryRepo: mockCategoryRepo);
  });

  tearDown(() {
    categoryBloc.close();
  });

  group('CategoryBloc', () {
    test('CategoryBloc: initial state is CategoryState.initial', () {
      expect(
        categoryBloc.state,
        const CategoryState.initial(CategoryStateModel()),
      );
    });

    blocTest<CategoryBloc, CategoryState>(
      'CategoryBloc: emits [loading, loaded] when categories are fetched successfully',
      build: () {
        when(
          () => mockCategoryRepo.list(param: any(named: 'param')),
        ).thenAnswer(
          (_) async => Right(
            CategoryApiResponseModel(
              timestamp: 0,
              categories: [
                CategoryModel(name: 'Category 1', file: 'file1.json'),
                CategoryModel(name: 'Category 2', file: 'file2.json'),
              ],
            ),
          ),
        );
        return categoryBloc;
      },
      act: (bloc) => bloc.add(const CategoryEvent.fetch()),
      expect:
          () => [
            const CategoryState.loading(CategoryStateModel()),
            CategoryState.loaded(
              CategoryStateModel(
                data: CategoryApiResponseModel(
                  timestamp: 0,
                  categories: [
                    CategoryModel(name: 'Category 1', file: 'file1.json'),
                    CategoryModel(name: 'Category 2', file: 'file2.json'),
                  ],
                ),
              ),
            ),
          ],
      verify: (_) {
        verify(
          () => mockCategoryRepo.list(param: any(named: 'param')),
        ).called(1);
      },
    );

    blocTest<CategoryBloc, CategoryState>(
      'CategoryBloc: emits [loading, error] when fetching categories fails',
      build: () {
        when(
          () => mockCategoryRepo.list(param: any(named: 'param')),
        ).thenAnswer(
          (_) async => Left(AppError(message: 'Error fetching categories')),
        );
        return categoryBloc;
      },
      act: (bloc) => bloc.add(const CategoryEvent.fetch()),
      expect:
          () => [
            const CategoryState.loading(CategoryStateModel()),
            const CategoryState.error(CategoryStateModel()),
          ],
      verify: (_) {
        verify(
          () => mockCategoryRepo.list(param: any(named: 'param')),
        ).called(1);
      },
    );

    blocTest<CategoryBloc, CategoryState>(
      'CategoryBloc: emits [loading, error] when an exception is thrown',
      build: () {
        when(
          () => mockCategoryRepo.list(param: any(named: 'param')),
        ).thenThrow(Exception('Unexpected error'));
        return categoryBloc;
      },
      act: (bloc) => bloc.add(const CategoryEvent.fetch()),
      expect:
          () => [
            const CategoryState.loading(CategoryStateModel()),
            const CategoryState.error(CategoryStateModel()),
          ],
      verify: (_) {
        verify(
          () => mockCategoryRepo.list(param: any(named: 'param')),
        ).called(1);
      },
    );
  });
}
