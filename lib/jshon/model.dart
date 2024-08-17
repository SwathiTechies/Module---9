class Article {
  final int id;
  final String title;
  final String author;
  final int publishedYear;
  final List<String> tags;

  Article({
    required this.id,
    required this.title,
    required this.author,
    required this.publishedYear,
    required this.tags,
  });

  // Factory constructor for creating a new Article instance from a map (JSON)
  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      publishedYear: json['publishedYear'],
      tags: List<String>.from(json['tags']),
    );
  }

  // Method to convert an Article instance into a map (JSON)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'publishedYear': publishedYear,
      'tags': tags,
    };
  }
}
