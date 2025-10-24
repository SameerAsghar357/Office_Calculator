import 'package:news_app/Models/News_Headlines_Model.dart';
import 'package:news_app/Services/NewsHeadlinesApiCall.dart';

class Newsapiresponse {
  // String? url;
  // Newsheadlinesapiresponse({this.url});
  NewsHeadlinesApiCall newsHeadlinesApiCall = NewsHeadlinesApiCall();
  NewsCategories newsCategories = NewsCategories();

  Future<News_Headlines_Model> fetchNewsHeadlinesApi() async {
    var response = await newsHeadlinesApiCall.fetchNewsHeadlinesApi();
    return response;
  }

  Future<News_Headlines_Model> fetchNewsCategoriesApi(String category) async {
    var response = await newsCategories.fetchNewsCategoriesApi(category);
    return response;
  }
}
