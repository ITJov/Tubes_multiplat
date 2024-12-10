import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartProvider = StateNotifierProvider<CartNotifier, List<Map<String, dynamic>>>((ref) {
  return CartNotifier();
});

class CartNotifier extends StateNotifier<List<Map<String, dynamic>>> {
  CartNotifier() : super([]);

  void addToCart(Map<String, dynamic> product) {
    state = [...state, product];
  }

  void removeFromCart(String name) {
    state = state.where((item) => item['name'] != name).toList();
  }

  void clearCart() {
    state = [];
  }
}
