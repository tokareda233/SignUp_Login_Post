import 'package:flutter/material.dart';

class NewsDetails extends StatelessWidget {
  String? ImageUrl;
  String Title;
  String? description;
  String PublishedDate;
  String? Author;
  String Article;
   NewsDetails({super.key,required this.Article,required this.Author,required this.ImageUrl,required this.PublishedDate,required this.Title,required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Top Headlines",style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.white),),
      backgroundColor: Colors.purple,
      centerTitle: true,
    ),
    body:Padding(
      padding: const EdgeInsets.all(12.0),
      child: SafeArea(
        child: Container(
        
          color: const Color.fromARGB(255, 222, 219, 219),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
               SizedBox( 
                height: 250, 
                width: 990,        
                 child: Image(image: NetworkImage(ImageUrl??"https://share.google/OafPmfchCnh5pXxjm")),
                ),
                SizedBox(height: 15,),
                 Text("$Title",style: TextStyle(fontWeight: FontWeight.bold,)),
                 SizedBox(height: 9,),
                 Row(children: [
                  Icon(Icons.person,color: Colors.blueGrey,),
                  Text("${Author??"Toka Reda Ahmed"}",style: TextStyle(color: Colors.blueGrey),),
                 ],),
                  SizedBox(height: 9,),
                  Row(children: [
                  Icon(Icons.calendar_month,color: Colors.red,),
                  Text("$PublishedDate",style: TextStyle(color: Colors.blueGrey),),
                  
                 ],),
                 SizedBox(height: 15,),
                  Divider(),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text("Description",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 11,),
                  Text("${description??"Toka Reda"}"),
                  SizedBox(height: 15,),
                   Divider(),
                   SizedBox(height: 9,),
                   Row(
                     children: [
                       Text("Full Article",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                     ],
                   ),
                   SizedBox(height: 9,),
                    Text("$Article"),
              ],
            ),
          ),
        ),
      ),
    ) ,
    );
  }
}