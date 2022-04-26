class Recipe {
  final int id;
  final String name;
  final String thumbnailUrl;

  const Recipe({
    required this.id,
    required this.name,
    required this.thumbnailUrl,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'],
      name: json['title'],
      thumbnailUrl: json['thumbnail_url'],
    );
  }
}
