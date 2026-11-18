import 'package:dio/dio.dart';
import 'package:login_signpp_post/Models/NewsModel.dart';

class Newsservice {

static Dio dio =Dio();

static Future<Newsmodel> NewsRequestService()async{
  Response response =await dio.get(

    "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=f099defd78a04eaf9e02e55e44f6e179"
  );

  return Newsmodel.fromJson(response.data);
}

}