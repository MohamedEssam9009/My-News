import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  getNews() async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=832d6133388348eb84a7620862a6a70c&country=eg&category=general');

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articales = jsonData['articles'];
    List<ArticalModel> articalesList = [];

    for (var artical in articales) {
      ArticalModel articalModel = ArticalModel(
          image: artical['urlToImage'],
          title: artical['title'],
          subTitle: artical['description']);

      articalesList.add(articalModel);
    }
    print(articalesList);
  }
}
