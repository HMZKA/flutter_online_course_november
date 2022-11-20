class NewsModel {
  String? status;
  int? totalResults;
  List<Articles> articles = [];
  NewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    json['articles'].forEach((element) {
      articles.add(Articles.fromJson(element));
    });
  }
}

class Articles {
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? content;
  Articles.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    content = json['content'];
  }
}
