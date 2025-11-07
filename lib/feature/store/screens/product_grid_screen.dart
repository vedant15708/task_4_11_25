import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/colors.dart';
import '../model/subcategory.dart';
import '../widgets/cart_icon_badge.dart';
import '../widgets/product_card.dart';

class ProductGridScreen extends StatelessWidget {
  final SubCategory subCategory;

  const ProductGridScreen({super.key, required this.subCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          subCategory.name,
          style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          CartIconBadge(iconColor: Colors.black),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: GridView.builder(
          itemCount: subCategory.products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12.w,
            mainAxisSpacing: 12.h,
            childAspectRatio: 0.80
          ),
          itemBuilder: (context, index) {
            final product = subCategory.products[index];
            return ProductCard(product: product);
          },
        ),
      ),
    );
  }
}