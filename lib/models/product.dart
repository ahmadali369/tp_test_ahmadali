class Product {
  final int id;
  final String name;
  final String image;
  final double price;
  final int quantity;
  final double? discountPercentage;
  final bool status;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
    this.discountPercentage,
    required this.status,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      image: json['image'] ?? '',
      price: (json['price'] ?? 0).toDouble(),
      quantity: json['quantity'] ?? 0,
      discountPercentage: json['discountPercentage']?.toDouble(),
      status: json['status'] ?? true,
    );
  }

  double get discountedPrice {
    if (discountPercentage != null && discountPercentage! > 0) {
      return price * (1 - discountPercentage! / 100);
    }
    return price;
  }

  bool get hasDiscount {
    return discountPercentage != null && discountPercentage! > 0;
  }

  bool get isInStock {
    return status && quantity > 0;
  }
}