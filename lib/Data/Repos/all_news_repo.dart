import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Models/all_news/all_news_model.dart';

class AllNewsRepo {
  Future<NewsModel?> getAllNews() async {
    try {
      var response = await http.get(Uri.parse(
          "https://newsapi.org/v2/everything?q=tesla&from=2023-06-27&sortBy=publishedAt&apiKey=aaf8b11273924cbba301fe0c38a417f4"));
      // print(response);
      Map<String, dynamic> deCodedResponse = json.decode(response.body);
      if (response.statusCode == 200) {
        NewsModel data = NewsModel.fromJson(deCodedResponse);
        print(data.articles[0].author);
        return data;
      } else {
        print('Request Failed!');
        return null;
      }
    } catch (error) {
      print('Error: $error');
    }
  }
}
