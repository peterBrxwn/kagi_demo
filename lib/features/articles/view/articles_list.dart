// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:kagi_demo/features/articles/bloc/articles_bloc.dart';
import 'package:kagi_demo/features/articles/view/article_detail.dart';
import 'package:kagi_demo/shared/widgets/error_display.dart';

class ArticlesListPage extends StatelessWidget {
  const ArticlesListPage({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "$category Articles",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<ArticlesBloc, ArticlesState>(
          builder: (context, state) {
            if (state is ArticlesStateLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is ArticlesStateLoaded) {
              final clusters = state.model.data!.clusters;

              return ListView.builder(
                itemCount: clusters.length,
                itemBuilder: (context, index) {
                  final article = clusters[index].articles!.first;
                  final hasValidImage =
                      article.image != null && article.image!.isNotEmpty;
                  final subtitle =
                      hasValidImage
                          ? '${article.domain}\n${article.formattedDate}'
                          : '${article.domain} • ${article.formattedDate}';

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
                      leading:
                          hasValidImage
                              ? Image.network(
                                article.image!,
                                width: 80,
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) {
                                  return const Icon(
                                    Icons.broken_image,
                                    size: 80,
                                    color: Colors.grey,
                                  );
                                },
                              )
                              : const Icon(
                                Icons.article_outlined,
                                size: 40,
                                color: Colors.grey,
                              ),
                      title: Text(
                        article.title,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        subtitle,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return ArticleDetailPage(
                                cluster: clusters[index],
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

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ErrorDisplay(
                  errorMessage: 'Failed to load news.',
                  onRetry: () {
                    context.read<ArticlesBloc>().add(
                      const ArticlesEvent.fetch(),
                    );
                  },
                ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<ArticlesBloc>().add(
                      const ArticlesEvent.fetch(),
                    );
                  },
                  icon: const Icon(Icons.refresh),
                  label: const Text('Retry'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
