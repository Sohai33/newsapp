import 'package:form/Models/BBS_NEWS_Headlines.dart';
import 'package:form/Models/catagory_news_api.dart';
import 'package:form/respository/News_Repository.dart';
//import 'package:form/respository/news_repositry1.dart';

class NewsviewModel {
  final _rep = NewsRepository();
  //final _rep1 = NewsRepository1();


  Future <modelBBCnewsheadlines> fetchNewchannelHeadlinesApi(String name) async{
    final responce = await _rep.fetchNewchannelHeadlinesApi(name);
    return responce;

  }

  Future<CatgeriyNewsApi> fetchCategoriesNewsApi(String category) async{
    final responce = await _rep.fetchCategoriesNewsApi(category);
    return responce;

  }

}

