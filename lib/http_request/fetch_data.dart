import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:module_9/http_request/post_request.dart';

import 'delete_request.dart';
import 'get_request.dart';
import 'model.dart';


class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  Future<List<Post>> futurePosts = [] as Future<List<Post>>;

  @override
  void initState() {
    super.initState();
    futurePosts = fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTTP CRUD Operations'),
      ),
      body: Center(
        child: FutureBuilder<List<Post>>(
          future: futurePosts,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text("Error: ${snapshot.error}");
            } else if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  Post post = snapshot.data![index];
                  return ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.body),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        deletePost(post.id).then((_) {
                          setState(() {
                            futurePosts = fetchPosts();
                          });
                        });
                      },
                    ),
                  );
                },
              );
            } else {
              return Text("No data available");
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createPost('New Post', 'This is a new post', 1).then((newPost) {
            setState(() {
              futurePosts = fetchPosts();
            });
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
