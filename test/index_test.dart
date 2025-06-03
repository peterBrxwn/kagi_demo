// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'features/articles/bloc/articles_bloc_test.dart' as articles_bloc_test;
import 'features/articles/impl/articles_impl_test.dart' as articles_impl_test;
import 'features/articles/model/article_model_test.dart' as article_model_test;
import 'features/articles/model/cluster_model_test.dart' as cluster_model_test;
import 'features/articles/view/article_detail_test.dart' as article_detail_test;
import 'features/articles/view/article_list_test.dart' as article_list_test;
import 'features/category/bloc/category_bloc_test.dart' as category_bloc_test;
import 'features/category/impl/category_impl_test.dart' as category_impl_test;
import 'shared/widgets/error_display_test.dart' as error_display_test;

import 'features/category/view/category_list_widget_test.dart'
    as category_list_widget_test;
import 'features/category/view/category_list_test.dart'
    as category_list_page_test;
import 'features/category/model/category_api_response_model_test.dart'
    as category_api_response_model_test;

void main() {
  group('All Tests', () {
    // Category tests
    category_list_widget_test.main();
    category_list_page_test.main();
    category_api_response_model_test.main();
    category_impl_test.main();
    category_bloc_test.main();

    // Articles tests
    article_detail_test.main();
    article_list_test.main();
    article_model_test.main();
    cluster_model_test.main();
    articles_impl_test.main();
    articles_bloc_test.main();

    // Shared widgets tests
    error_display_test.main();
  });
}
