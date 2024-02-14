import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView(
        children: [
          ProductItem(name: 'Product 1'),
          ProductItem(name: 'Product 2'),
          // Add more products as needed
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String name;

  ProductItem({required this.name});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      trailing: ElevatedButton(
        onPressed: () {
          // Implement functionality to add product to cart
        },
        child: Text('Add to Cart'),
      ),
    );
  }
}
