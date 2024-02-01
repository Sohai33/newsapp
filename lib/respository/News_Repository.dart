import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:form/Models/BBS_NEWS_Headlines.dart';
import 'package:form/Models/catagory_news_api.dart';
import 'package:http/http.dart' as http;
class NewsRepository{
  Future<modelBBCnewsheadlines> fetchNewchannelHeadlinesApi(String name)async {
   String url = 'https://newsapi.org/v2/top-headlines?sources=$name&apiKey=279439dfabe34da79baaa9f95582a6ce';
   //String url1 = 'https://newsapi.org/v2/top-headlines?sources=abc-news&apiKey=279439dfabe34da79baaa9f95582a6ce';
   final response = await http.get(Uri.parse(url));
   if(kDebugMode) {
     print(response.body);
   }
   if(response.statusCode== 200){
     final body = jsonDecode(response.body);
     return modelBBCnewsheadlines.fromJson(body);


   }
   throw Exception('Error');
  }


  Future<CatgeriyNewsApi> fetchCategoriesNewsApi(String category)async {
    String url = 'https://newsapi.org/v2/everything?q=${category}&apiKey=279439dfabe34da79baaa9f95582a6ce';
    //String url1 = 'https://newsapi.org/v2/top-headlines?sources=abc-news&apiKey=279439dfabe34da79baaa9f95582a6ce';
    final response = await http.get(Uri.parse(url));
    if(kDebugMode) {
      print(response.body);
    }
    if(response.statusCode== 200){
      final body = jsonDecode(response.body);
      return CatgeriyNewsApi.fromJson(body);


    }
    throw Exception('Error');
  }

}