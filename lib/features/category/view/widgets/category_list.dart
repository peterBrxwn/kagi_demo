// Flutter imports:
import 'package:flutter/material.dart';

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
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Selected: ${category.name}')),
              );
            },
          ),
        );
      },
    );
  }
}
