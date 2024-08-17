import 'dart:convert';

import 'model.dart';

void main() {
  String jsonString = '''
  {
    "id": 1,
    "title": "Introduction to Flutter",
    "author": "Jane Doe",
    "publishedYear": 2021,
    "tags": ["flutter", "dart", "mobile development"]
  }
  ''';

  // Parse the JSON string
  Map<String, dynamic> jsonData = jsonDecode(jsonString);

  // Create an Article object from the JSON data
  Article article = Article.fromJson(jsonData);

  print('Title: ${article.title}');
  print('Author: ${article.author}');
}
