import 'package:tp_test/models/product.dart';

class SubCategory {
  final int id;
  final String name;
  final String image;
  final List<Product> products;
  final bool status;

  SubCategory({
    required this.id,
    required this.name,
    required this.image,
    required this.products,
    required this.status,
  });

  factory SubCategory.fromJson(Map<String, dynamic> json) {
    return SubCategory(
      id: json['id'],
      name: json['name'],
      image: json['image'] ?? '',
      products: (json['products'] as List)
          .map((product) => Product.fromJson(product))
          .toList(),
      status: json['status'] ?? true,
    );
  }

  int get totalQuantity {
    return products.fold(0, (sum, product) => sum + product.quantity);
  }
}