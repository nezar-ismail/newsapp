// ignore_for_file: unused_local_variable, camel_case_types

import 'package:dio/dio.dart';
import 'package:newsapp3/class/servicedata.dart';

class newsservices {
  final Dio dio;

  newsservices(this.dio);
  Future<List<servicsedata>> getnews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=ar&apiKey=c08d0d2b775349c6b3f1bf248c9b66c8&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<servicsedata> articlesList = [];

      for (var article in articles) {
        servicsedata articleModel = servicsedata.fromjson(article);
        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
