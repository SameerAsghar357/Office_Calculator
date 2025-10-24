import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/Models/News_Headlines_Model.dart';

enum sourceList { bbcNews, aryNews, cnnNews, aljazeeraEnglish, independent }

var url = '';

void sourceFinder(String source) {
  url =
      'https://newsapi.org/v2/top-headlines?sources=$source&apiKey=eb6b8ff60d5146699c501e277fefbb9b';
}

class NewsHeadlinesApiCall {
  Future<News_Headlines_Model> fetchNewsHeadlinesApi() async {
    // final url =
    //     'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=eb6b8ff60d5146699c501e277fefbb9b';
    var response = await http.get(Uri.parse(url));

    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      return News_Headlines_Model.fromJson(data);
    } else {
      return News_Headlines_Model.fromJson(data);
    }
  }
}

class NewsCategories {
  Future<News_Headlines_Model> fetchNewsCategoriesApi(String category) async {
    final url =
        'https://newsapi.org/v2/everything?q=$category&apiKey=eb6b8ff60d5146699c501e277fefbb9b';
    var response = await http.get(Uri.parse(url));

    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      return News_Headlines_Model.fromJson(data);
    } else {
      return News_Headlines_Model.fromJson(data);
    }
  }
}
