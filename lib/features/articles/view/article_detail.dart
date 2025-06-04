// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:kagi_demo/features/articles/model/cluster_model.dart';

class ArticleDetailPage extends StatelessWidget {
  final ClusterModel cluster;
  const ArticleDetailPage({super.key, required this.cluster});

  @override
  Widget build(BuildContext context) {
    final article = cluster.articles?.first;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (article?.title != null && article!.title.isNotEmpty) ...[
              Text(
                article.title,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
            ],
            if (cluster.category != null && cluster.category!.isNotEmpty) ...[
              Text(
                "Category: ${cluster.category}",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(height: 5),
            ],
            if (cluster.location != null && cluster.location!.isNotEmpty) ...[
              Text(
                "Location: ${cluster.location}",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(height: 20),
            ],
            Text(
              cluster.shortSummary ?? 'No summary available.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 20),

            if (cluster.quote != null && cluster.quote!.isNotEmpty) ...[
              Text(
                '${cluster.quote}',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 5),
              if (cluster.quoteAuthor != null)
                Text(
                  '- ${cluster.quoteAuthor}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  ),
                ),
              const SizedBox(height: 10),
            ],
            if (cluster.didYouKnow != null &&
                cluster.didYouKnow!.isNotEmpty) ...[
              Text(
                "Did You Know?",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                cluster.didYouKnow!,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 20),
            ],
            if (cluster.geopoliticalContext != null &&
                cluster.geopoliticalContext!.isNotEmpty) ...[
              Text(
                "Geopolitical Context:",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                cluster.geopoliticalContext!,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 20),
            ],
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  final link = article!.link;
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Opening $link")));
                },
                icon: const Icon(Icons.open_in_browser),
                label: const Text("Read More"),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  textStyle: const TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
