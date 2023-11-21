class Product {
  final String name;
  final String description;
  final String imageUrl;
  final List<RecipeStep> recipe;
  final String preparation;

  Product({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.recipe,
    required this.preparation,
  });
}

class RecipeStep {
  final String text;
  final String imagePath;

  RecipeStep({
    required this.text,
    required this.imagePath,
  });
}
