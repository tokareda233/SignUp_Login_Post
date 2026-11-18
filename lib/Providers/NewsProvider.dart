import 'package:flutter/material.dart';
import 'package:login_signpp_post/Models/NewsModel.dart';
import 'package:login_signpp_post/Services/NewsService.dart';

class Newsprovider extends ChangeNotifier {

Newsmodel? newsmodel;

getNewsProvider()async{

  newsmodel=await Newsservice.NewsRequestService();
  notifyListeners();
}

}