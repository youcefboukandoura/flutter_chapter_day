import 'package:flutter/material.dart';

import '../../domain/model/Recipe.dart';

class RecipeTile extends StatelessWidget {
  final Recipe recipe;

  const RecipeTile(this.recipe);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          children: [
            Image.network(recipe.thumbnailUrl),
            Text(
              recipe.name,
              style: const TextStyle(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
