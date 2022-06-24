class NewsJson {
  final String author;
  final String title;
  final String urlToImage;
  final String content;


  const NewsJson({
    required this.author,
    required this.content,
    required this.title,
    required this.urlToImage,
  });

  factory NewsJson.fromJson(Map<String, dynamic> json) {
    return NewsJson(
      author: json['author'],
      title: json['title'],
      urlToImage: json["urlToImage"],
      content: json['content']
    );
  }
}

