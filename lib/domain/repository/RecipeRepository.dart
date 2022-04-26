import 'dart:convert';

import '../model/Album.dart';
import 'package:http/http.dart' as http;

Future<List<Album>> fetchRecipes() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    Iterable list = json.decode(response.body);
    return list.map((model) => Album.fromJson(model)).toList();
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
