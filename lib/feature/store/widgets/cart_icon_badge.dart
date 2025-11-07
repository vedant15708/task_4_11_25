import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/colors.dart';
import '../notifiers/cart_notifier.dart';

class CartIconBadge extends StatelessWidget {
  const CartIconBadge({
    super.key,
    this.iconColor = AppColors.white,
  });

  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Map<String, int>>(
      valueListenable: cartNotifier,
      builder: (context, cart, child) {
        final totalItems = cart.length;

        return Stack(
          alignment: Alignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.shopping_cart, color: iconColor),
              onPressed: () {
              },
            ),
            if (totalItems > 0)
              Positioned(
                top: 8.r,
                right: 8.r,
                child: Container(
                  padding: EdgeInsets.all(2.r),
                  decoration: BoxDecoration(
                    color: AppColors.loginbutton,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  constraints: BoxConstraints(minWidth: 16.w, minHeight: 16.h),
                  child: Text(
                    '$totalItems',
                    style: TextStyle(color: Colors.white, fontSize: 10.sp),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}