import 'dart:convert';
import 'package:http/http.dart' as http;

import 'model.dart';

Future<Post> updatePost(int id, String title, String body, int userId) async {
  final response = await http.put(
    Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'),
    headers: {'Content-Type': 'application/json; charset=UTF-8'},
    body: jsonEncode({
      'id': id,
      'title': title,
      'body': body,
      'userId': userId,
    }),
  );

  if (response.statusCode == 200) {
    return Post.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to update post');
  }
}






