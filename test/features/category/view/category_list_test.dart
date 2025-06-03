// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:kagi_demo/features/category/bloc/category_bloc.dart';
import 'package:kagi_demo/features/category/model/category_api_response_model.dart';
import 'package:kagi_demo/features/category/model/category_state_model.dart';
import 'package:kagi_demo/features/category/view/category_list.dart';
import 'package:kagi_demo/features/category/view/widgets/category_list.dart';
import 'package:kagi_demo/shared/widgets/error_display.dart';

class MockCategoryBloc extends Mock implements CategoryBloc {}

void main() {
  late MockCategoryBloc mockCategoryBloc;

  setUp(() {
    mockCategoryBloc = MockCategoryBloc();
    when(
      () => mockCategoryBloc.stream,
    ).thenAnswer((_) => const Stream<CategoryState>.empty());
  });

  Widget createTestWidget() {
    return MaterialApp(
      home: BlocProvider<CategoryBloc>.value(
        value: mockCategoryBloc,
        child: const CategoryListPage(),
      ),
    );
  }

  group('CategoryListPage Widget Tests', () {
    testWidgets(
      'should display loading indicator when state is CategoryStateLoading',
      (tester) async {
        when(
          () => mockCategoryBloc.state,
        ).thenReturn(CategoryState.loading(CategoryStateModel()));

        await tester.pumpWidget(createTestWidget());

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
      },
    );

    testWidgets('should display categories when state is CategoryStateLoaded', (
      tester,
    ) async {
      const json = {
        "timestamp": 1748867070,
        "categories": [
          {"file": "tech", "name": "Technology"},
          {"file": "health", "name": "Health"},
        ],
      };
      final categoryApiResponseModel = CategoryApiResponseModel.fromJson(json);
      final mockState = CategoryState.loaded(
        CategoryStateModel(data: categoryApiResponseModel),
      );
      when(() => mockCategoryBloc.state).thenReturn(mockState);

      await tester.pumpWidget(createTestWidget());

      expect(
        find.text(
          'Last Updated: ${categoryApiResponseModel.formattedTimestamp}',
        ),
        findsOneWidget,
      );
      expect(find.byType(CategoryListWidget), findsOneWidget);
    });

    testWidgets(
      'should display error message when state is CategoryStateError',
      (tester) async {
        when(
          () => mockCategoryBloc.state,
        ).thenReturn(const CategoryState.error(CategoryStateModel()));

        await tester.pumpWidget(createTestWidget());

        expect(find.byType(ErrorDisplay), findsOneWidget);
        expect(find.text('Failed to load categories.'), findsOneWidget);
      },
    );

    testWidgets(
      'should retry fetching categories when retry button is pressed',
      (tester) async {
        when(
          () => mockCategoryBloc.state,
        ).thenReturn(const CategoryState.error(CategoryStateModel()));
        when(
          () => mockCategoryBloc.add(const CategoryEvent.fetch()),
        ).thenReturn(null);

        await tester.pumpWidget(createTestWidget());
        await tester.pump();

        final tryAgainButtonFinder = find.text('Try Again');
        expect(tryAgainButtonFinder, findsOneWidget);

        await tester.tap(tryAgainButtonFinder);
        await tester.pump();

        verify(
          () => mockCategoryBloc.add(const CategoryEvent.fetch()),
        ).called(1);
      },
    );
  });
}
