import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

Future<List<Post>> fetchPosts() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  if (response.statusCode == 200) {
    List jsonResponse = jsonDecode(response.body);
    return jsonResponse.map((post) => Post.fromJson(post)).toList();
  } else {
    throw Exception('Failed to load posts');

  }
}

// class sample extends StatelessWidget {
//   const sample({super.key});
//
//   Future<List<Post>> futurePost;
//
//   @override
//   void initState(){
//     super.initState();
//     futurePost = fetchPosts();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(future: futurePost,
//           builder: (context, SnapShot) {
//         if (SnapShot.hasData){
//           return ListView.builder(itemBuilder: (context, index))
//         }
//           } ),
//     );
//   }
// }
