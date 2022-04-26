import 'dart:convert';

import '../model/Album.dart';
import 'package:http/http.dart' as http;

import '../model/RecipeResult.dart';

Future<RecipeResult> fetchRecipes() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.

    return RecipeResult.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
