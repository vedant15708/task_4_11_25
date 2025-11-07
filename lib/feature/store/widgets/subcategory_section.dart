import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_4_11_25/feature/store/widgets/product_card.dart';
import '../../../core/utils/app_constant.dart';
import '../../../core/utils/colors.dart';
import '../model/subcategory.dart';
import '../screens/product_grid_screen.dart';

class SubCategorySection extends StatelessWidget {
  final SubCategory subCategory;

  const SubCategorySection({
    super.key,
    required this.subCategory,
  });

  @override
  Widget build(BuildContext context) {
    const int maxItemsToShow = 5;
    final bool hasMore = subCategory.products.length > maxItemsToShow;
    final int numProductsToShow = min(subCategory.products.length, maxItemsToShow);
    final int totalItemCount = numProductsToShow + (hasMore ? 1 : 0);

    Widget buildViewAllButton() {
      return InkWell(
        borderRadius: BorderRadius.circular(20.w),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductGridScreen(
                subCategory: subCategory,
              ),
            ),
          );
        },
        child: Container(
          width: 40.w,
          height: 40.w,
          decoration: BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 6,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Icon(
            Icons.arrow_forward,
            color: AppColors.primary,
            size: 18.sp,
          ),
        ),
      );
    }

    return Container(
      color: AppColors.sectionBackground,
      margin: EdgeInsets.only(top: 10.h),
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  subCategory.name,
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductGridScreen(
                          subCategory: subCategory,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    AppConstants.moreText,
                    style: TextStyle(fontSize: 14.sp, color: AppColors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            height: 200.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              clipBehavior: Clip.none,
              itemCount: totalItemCount,

              itemBuilder: (context, index) {

                if (index < numProductsToShow) {
                  final product = subCategory.products[index];
                  return ProductCard(product: product);
                } else {
                  return Center(
                    child: buildViewAllButton(),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}