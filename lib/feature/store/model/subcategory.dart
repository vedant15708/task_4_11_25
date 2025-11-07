import 'package:task_4_11_25/feature/store/model/product.dart';

class SubCategory {
  final String name;
  final List<Product> products;

  SubCategory({
    required this.name,
    required this.products,
  });
}