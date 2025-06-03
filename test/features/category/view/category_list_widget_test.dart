// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:kagi_demo/features/articles/bloc/articles_bloc.dart';
import 'package:kagi_demo/features/articles/impl/articles_impl.dart';
import 'package:kagi_demo/features/articles/model/articles_api_params_model.dart';
import 'package:kagi_demo/features/articles/view/articles_list.dart';
import 'package:kagi_demo/features/category/model/category_model.dart';
import 'package:kagi_demo/features/category/view/widgets/category_list.dart';

class FakeArticlesApiParamModel extends Fake implements ArticlesApiParamModel {}

class MockArticlesBloc extends Mock implements ArticlesBloc {}

class MockArticlesImpl extends Mock implements ArticlesImpl {}

void main() {
  late MockArticlesImpl mockArticlesImpl;

  setUpAll(() {
    registerFallbackValue(FakeArticlesApiParamModel());
  });

  setUp(() {
    mockArticlesImpl = MockArticlesImpl();
  });

  Widget createTestWidget(List<CategoryModel> categories) {
    return RepositoryProvider<ArticlesImpl>.value(
      value: mockArticlesImpl,
      child: MaterialApp(
        home: Scaffold(body: CategoryListWidget(categories: categories)),
      ),
    );
  }

  group('CategoryList Widget Tests', () {
    testWidgets('CategoryList: should display a list of categories', (tester) async {
      const categories = [
        CategoryModel(name: 'Technology', file: 'tech'),
        CategoryModel(name: 'Health', file: 'health'),
      ];

      await tester.pumpWidget(createTestWidget(categories));

      expect(find.byType(Card), findsNWidgets(categories.length));
      expect(find.text('Technology News'), findsOneWidget);
      expect(find.text('Health News'), findsOneWidget);
    });

    testWidgets('CategoryList: should navigate to ArticlesListPage on category tap', (
      tester,
    ) async {
      const categories = [CategoryModel(name: 'Technology', file: 'tech')];

      await tester.pumpWidget(createTestWidget(categories));
      await tester.tap(find.text('Technology News'));
      await tester.pumpAndSettle();

      expect(find.byType(ArticlesListPage), findsOneWidget);
      expect(find.text('Technology Articles'), findsOneWidget);
    });
  });
}
