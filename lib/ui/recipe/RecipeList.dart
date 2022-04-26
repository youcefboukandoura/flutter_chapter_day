import 'package:flutter/material.dart';
import 'package:flutter_chapter_day/domain/model/Recipe.dart';
import 'package:flutter_chapter_day/domain/model/RecipeResult.dart';
import 'package:flutter_chapter_day/domain/repository/RecipeRepository.dart';
import 'package:flutter_chapter_day/ui/Album/AlbumTile.dart';
import 'package:flutter_chapter_day/ui/recipe/RecipeTile.dart';


class RecipeList extends StatefulWidget {
  const RecipeList({Key? key}) : super(key: key);

  @override
  State<RecipeList> createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  late Future<RecipeResult> recipes;

  @override
  void initState() {
    super.initState();
    recipes = fetchRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return getAlbums();
  }

  getAlbums() {
    return FutureBuilder<RecipeResult>(
      future: RecipeResult,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return getList(snapshot.data!.results);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        // By default, show a loading spinner.
        return const CircularProgressIndicator();
      },
    );
  }

  getList(List<Recipe> recipes) {
    return ListView.builder(
        itemCount: recipes.length,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, index) {
          return RecipeTile(recipes[index]);
        });
  }
}
