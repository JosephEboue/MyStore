class Product {
  int id;
  String title, description, category, image;
  num price;
  Map rating;

  Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});
}
