import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/post.dart';

class DataService {
  //https://jsonplaceholder.typicode.com/posts
  final _baseUrl = 'jsonplaceholder.typicode.com';

  Future<List<Post>> getPosts() async {
    try {
      final uri = Uri.https(_baseUrl, '/posts');
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as List;
        final posts = json.map((e) => Post.fromJson(e)).toList();
        return posts;
      } else {
        throw Exception('Error');
      }
    } catch (e) {
      rethrow;
    }
  }
}
