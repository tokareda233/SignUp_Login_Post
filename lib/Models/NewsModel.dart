class Newsmodel {

List<dynamic> articles;
Newsmodel({required this.articles});
factory Newsmodel.fromJson(Map<String,dynamic>Json){
  return Newsmodel(articles: Json["articles"]);
}

}