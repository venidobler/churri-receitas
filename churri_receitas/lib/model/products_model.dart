class Product {
  final String name;
  final String description;
  final String imageUrl;
  final List<RecipeStep> recipe;
  final String preparation;
  bool isFavorite; // Novo atributo

  Product({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.recipe,
    required this.preparation,
    this.isFavorite = false, // Valor padrão é falso
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
