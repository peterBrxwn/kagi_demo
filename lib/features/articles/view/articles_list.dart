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
      appBar: AppBar(title: Text("$category Articles")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<ArticlesBloc, ArticlesState>(
          builder: (context, state) {
            if (state is ArticlesStateLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is ArticlesStateLoaded) {
              final cluster = state.model.data!.clusters.first;
              final articles = cluster.articles!;

              return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  final article = articles[index];

                  return Card(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: ListTile(
                      leading:
                          article.image != null && article.image!.isNotEmpty
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
                              : const Icon(Icons.article_outlined),
                      title: Text(article.title),
                      subtitle: Text(
                        '${article.domain} • ${article.formattedDate}',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return ArticleDetailPage(
                                title: article.title,
                                summary: cluster.shortSummary!,
                                url: article.link,
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

            return ErrorDisplay(
              errorMessage: 'Failed to load news.',
              onRetry: () {
                context.read<ArticlesBloc>().add(const ArticlesEvent.fetch());
              },
            );
          },
        ),
      ),
    );
  }
}
