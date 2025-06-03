// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:kagi_demo/features/articles/bloc/articles_bloc.dart';
import 'package:kagi_demo/features/articles/impl/articles_impl.dart';
import 'package:kagi_demo/features/articles/view/articles_list.dart';
import 'package:kagi_demo/features/category/model/category_model.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key, required this.categories});
  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            title: Text(
              '${category.name} News',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.grey,
            ),
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
