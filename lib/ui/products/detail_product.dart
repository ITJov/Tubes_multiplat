import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../cart/cart_provider.dart';

class DetailProductPage extends ConsumerWidget {
  final String name;
  final double price;
  final String description;

  DetailProductPage({
    required this.name,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartNotifier = ref.read(cartProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Rp ${price.toStringAsFixed(0)}',
              style: TextStyle(fontSize: 20, color: Colors.orange),
            ),
            SizedBox(height: 16),
            Text(description),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                cartNotifier.addToCart({
                  'name': name,
                  'price': price,
                  'description': description,
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('$name added to cart!')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Center(
                child: Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
