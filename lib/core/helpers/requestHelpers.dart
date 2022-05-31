class NewsJson {
  final String author;
  final String title;
  final String description;
  final String urlImage;
  final String date;
  final String content;





  const NewsJson({
    required this.author,
    required this.title,
    required this.description,
    required this.urlImage,
    required this.date,
    required this.content
  });

  factory NewsJson.fromJson(Map<String, dynamic> json) {
    return NewsJson(
      author: json['userId'],
      title: json['title'],
      description: json['description'],
      urlImage: json['urlToImage'],
      date: json['publishedAt'],
      content: json['content']
    );
  }
}