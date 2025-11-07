import 'package:task_4_11_25/feature/store/model/subcategory.dart';

class Category {
  final String name;
  final String image;
  final List<SubCategory> subCategories;

  Category({
    required this.name,
    required this.image,
    required this.subCategories,
  });
}