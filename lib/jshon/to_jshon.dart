import 'dart:convert';

import 'model.dart';

void main() {
  Article article = Article(
    id: 1,
    title: "Introduction to Flutter",
    author: "Jane Doe",
    publishedYear: 2021,
    tags: ["flutter", "dart", "mobile development"],
  );

  // Convert the Article object to JSON
  String jsonString = jsonEncode(article.toJson());

  print(jsonString);
}
