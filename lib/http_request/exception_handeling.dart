import 'dart:convert';
import 'package:http/http.dart' as http;

void fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      print(data);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
