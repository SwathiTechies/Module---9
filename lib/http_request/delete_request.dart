import 'package:http/http.dart' as http;

Future<void> deletePost(int id) async {
  final response = await http.delete(
    Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'),
  );

  if (response.statusCode == 200) {
    print('Post deleted');
  } else {
    throw Exception('Failed to delete post');
  }
}

