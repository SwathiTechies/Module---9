import 'dart:convert';
import 'package:http/http.dart' as http;

import 'model.dart';

Future<Post> createPost(String title, String body, int userId) async {
  final response = await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    headers: {'Content-Type': 'application/json; charset=UTF-8'},
    body: jsonEncode({
      'title': title,
      'body': body,
      'userId': userId,
    }),
  );

  if (response.statusCode == 201) {
    return Post.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create post');
  }
}

