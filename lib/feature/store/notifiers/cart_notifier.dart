import 'package:flutter/material.dart';
final cartNotifier = ValueNotifier<Map<String, int>>({});

void addItemToCart(String productId) {
  final newCart = Map<String, int>.from(cartNotifier.value);
  newCart[productId] = (newCart[productId] ?? 0) + 1;
  cartNotifier.value = newCart;
}

void removeItemFromCart(String productId) {
  final newCart = Map<String, int>.from(cartNotifier.value);
  int currentQuantity = newCart[productId] ?? 0;

  if (currentQuantity > 1) {
    newCart[productId] = currentQuantity - 1;
  } else {
    newCart.remove(productId);
  }

  cartNotifier.value = newCart;
}

int getCartTotalItemCount(Map<String, int> cart) {
  return cart.values.fold(0, (sum, count) => sum + count);
}