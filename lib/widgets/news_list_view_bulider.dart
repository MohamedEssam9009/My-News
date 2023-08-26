import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../services/news_services.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatelessWidget {
  const NewsListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NewsServices(Dio()).getNews(),
      builder: (context, snapshot) {
        return NewsListView(
          articles: snapshot.data ?? [],
        );
      },
    );
    // return isLoading
    //     ? const SliverToBoxAdapter(
    //         child: Center(child: CircularProgressIndicator()))
    //     : articles.isNotEmpty
    //         ? NewsListView(articles: articles)
    //         : const SliverToBoxAdapter(
    //             child: Text('Oops there was an error, try later '),
    //           );
  }
}
