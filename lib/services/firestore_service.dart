import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addProduct({
    required String name,
    required double price,
    required String imageUrl,
  }) async {
    try {
      await _firestore.collection('products').add({
        'name': name,
        'price': price,
        'imageUrl': imageUrl,
      });
      print("Product added successfully!");
    } catch (e) {
      print("Failed to add product: $e");
    }
  }
}
