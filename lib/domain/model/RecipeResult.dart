import 'Recipe.dart';

class RecipeResult {
  final int count;
  final List<Recipe> results;

  const RecipeResult({
    required this.count,
    required this.results,
  });

  factory RecipeResult.fromJson(Map<String, dynamic> json) {
    return RecipeResult(
      count: json['count'],
      results: json['results'],
    );
  }
}
