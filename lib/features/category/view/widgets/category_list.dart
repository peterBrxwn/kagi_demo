// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kagi_demo/features/articles/bloc/articles_bloc.dart';
import 'package:kagi_demo/features/articles/impl/articles_impl.dart';
import 'package:kagi_demo/features/articles/view/articles_list.dart';
// Project imports:
import 'package:kagi_demo/features/category/model/category_model.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key, required this.categories});
  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          child: ListTile(
            title: Text(category.name),
            subtitle: Text('File: ${category.file}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) {
                    return BlocProvider(
                      create: (context) {
                        return ArticlesBloc(
                          category: category.file,
                          newsRepo: context.read<ArticlesImpl>(),
                        )..add(const ArticlesEvent.fetch());
                      },
                      child: ArticlesListPage(category: category.name),
                    );
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
