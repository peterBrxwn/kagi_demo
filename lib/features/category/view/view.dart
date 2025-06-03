// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:kagi_demo/features/category/bloc/category_bloc.dart';
import 'package:kagi_demo/features/category/view/widgets/category_list.dart';
import 'package:kagi_demo/shared/widgets/error_display.dart';

class CategoryListPage extends StatelessWidget {
  const CategoryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) {
            if (state is CategoryStateLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is CategoryStateLoaded) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Last Updated: ${state.model.data!.formattedTimestamp}',
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: CategoryList(
                      categories: state.model.data!.categories,
                    ),
                  ),
                ],
              );
            }

            return ErrorDisplay(
              errorMessage: 'Failed to load categories.',
              onRetry: () {
                context.read<CategoryBloc>().add(const CategoryEvent.fetch());
              },
            );
          },
        ),
      ),
    );
  }
}
