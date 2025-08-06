import 'package:tp_test/models/subCatagory.dart';

class Category {
  final int id;
  final String name;
  final String image;
  final List<SubCategory> subCategories;
  final bool status;

  Category({
    required this.id,
    required this.name,
    required this.image,
    required this.subCategories,
    required this.status,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      image: json['image'] ?? '',
      subCategories: (json['subCategory'] as List)
          .map((sub) => SubCategory.fromJson(sub))
          .toList(),
      status: json['status'] ?? true,
    );
  }

  int get totalQuantity {
    return subCategories.fold(0, (sum, sub) => sum + sub.totalQuantity);
  }
}
