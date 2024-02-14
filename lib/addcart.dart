import 'package:flutter/material.dart';
import 'package:task_product/main.dart';

class addcart extends StatefulWidget {
  const addcart({super.key});

  @override
  State<addcart> createState() => _addcartState();
}

class _addcartState extends State<addcart> {
  List<Product> cart = [];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Cart"),backgroundColor: Colors.white,),
      body:   Expanded(
        child: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context, index) {
            return ListTile(

              title: Text(cart[index].name),
              subtitle: Text('\$${cart[index].price.toString()}'),
            );
          },
        ),
      ),
    );
  }
}
