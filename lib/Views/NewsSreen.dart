import 'package:flutter/material.dart';
import 'package:login_signpp_post/Providers/NewsProvider.dart';
import 'package:login_signpp_post/Views/NewsDetails.dart';
import 'package:provider/provider.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Top Headlines",style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.white),),
      backgroundColor: Colors.purple,
      centerTitle: true,
    ),

    body: Consumer<Newsprovider>(
      builder: (context, value, child) {

        if (value.newsmodel==null){
          value.getNewsProvider();
          return Center(child: CircularProgressIndicator(),);
        }else{


          return ListView.builder(
            itemCount: value.newsmodel!.articles.length,
            itemBuilder: (context, index) {

            String? UrlImage=value.newsmodel!.articles[index]["urlToImage"];
            String ? Describtion=value.newsmodel!.articles[index]["description"];
            

             return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetails(
                  Article: value.newsmodel!.articles[index]["content"],
                  Author: value.newsmodel!.articles[index]["author"],
                  ImageUrl: UrlImage,
                  PublishedDate: value.newsmodel!.articles[index]["publishedAt"], 
                  Title: value.newsmodel!.articles[index]["title"],
                   description: Describtion
                   ),));
              },
               child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                       children: [
                         Card(
                           
                           elevation: 3,
                           child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                  SizedBox(
                    
                    child: Image(image: NetworkImage(UrlImage??"https://share.google/OafPmfchCnh5pXxjm")),
                  
                  ),
                  SizedBox(height: 6,),
                  Text("${value.newsmodel!.articles[index]["title"]}",style: TextStyle(fontWeight: FontWeight.bold,)),
                  SizedBox(height: 10,),
                  Text("${Describtion??"Toka Reda"}"),
                  ],
                ),
                           )
                         )
                         
                       ],
                       
                       ),
                ),
             );
            }
      );
        }
      },
     
    ),



    );
  }
}