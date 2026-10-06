import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ProductGridScreen()));
}

class Product {
  final String name;
  final String price;
  final String imageUrl;

  Product({required this.name, required this.price, required this.imageUrl});
}

class ProductGridScreen extends StatelessWidget {
  const ProductGridScreen({super.key});

  final List<Product> products = const [
    // Using placeholders for demo
  ];

  @override
  Widget build(BuildContext context) {
    // Generate dummy data
    final List<Product> items = List.generate(
      10,
      (index) => Product(
        name: 'Product ${index + 1}',
        price: '\$${(index + 1) * 10}',
        imageUrl: 'https://picsum.photos/200?random=$index',
      ),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Product Listing')),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final product = items[index];
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.network(product.imageUrl, width: double.infinity, fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(product.price, style: const TextStyle(color: Colors.green)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
