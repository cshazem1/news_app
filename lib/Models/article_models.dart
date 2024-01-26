class ArticleModel{
final  String ?image;
final  String Title;
final  String? describtion;
 final String? url;

  ArticleModel({required this.image,required this.Title,required this.describtion,required this.url});
 factory ArticleModel.fromJson(json){
    return ArticleModel(image: json['urlToImage'], Title: json["title"], describtion: json["description"],url:json["url"]);

  }
}