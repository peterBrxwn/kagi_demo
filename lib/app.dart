// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:kagi_demo/core/services/http_service.dart';
import 'package:kagi_demo/features/articles/impl/articles_impl.dart';
import 'package:kagi_demo/features/category/bloc/category_bloc.dart';
import 'package:kagi_demo/features/category/impl/category_impl.dart';
import 'package:kagi_demo/features/category/view/category_list.dart';
import 'package:kagi_demo/services/injection.dart';

class Kagi extends StatelessWidget {
  const Kagi({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => CategoryImpl(locator<HttpService>())),
        RepositoryProvider(create: (_) => ArticlesImpl(locator<HttpService>())),
      ],
      child: BlocProvider(
        create: (context) {
          return CategoryBloc(categoryRepo: context.read<CategoryImpl>())
            ..add(const CategoryEvent.fetch());
        },
        child: MaterialApp(
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          home: const CategoryListPage(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
