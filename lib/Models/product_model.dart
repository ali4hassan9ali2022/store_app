class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String category;
  final String image;
  final RatingModel? rating;
  const ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });
  factory ProductModel.fromJson(json) {
    return ProductModel(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        description: json["description"],
        category: json["category"],
        image: json["image"],
        rating: json["rating"] == null
            ? null
            : RatingModel.fromJson(
                json["rating"],
              ));
  }
}

class RatingModel {
  final double rate;
  final int count;
  const RatingModel({
    required this.rate,
    required this.count,
  });
  factory RatingModel.fromJson(json) {
    return RatingModel(rate: json["rate"], count: json["count"]);
  }
}
