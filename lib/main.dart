
//First page ui...


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class Product {
  final String name;
  final double price;
  final Image;
  int quantity;


  Product({required this.name, required this.price, this.quantity = 1,this.Image});
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Column(
        children: [
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Hello"),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.notification_add)),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.search)),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 250,
                  width: double.infinity,
                 // width: 200,
                  //color: Colors.grey.shade400,
                  child: Column(
                    children: [
                      SizedBox(height: 20,),

                      Container(child: Text("Make Yore Fashion Look Mire Charming",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                      SizedBox(height: 20,),

                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Price"),
                          Text("Select Size"),
                        ],
                      ),
                      SizedBox(height: 20,),

                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Text("💲168",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(height: 20,),

                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                height: 25,
                                width: 25,
                                child: Center(child: Text("X")),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border: Border.all(width: 1)),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                height: 25,
                                width: 25,
                                child: Center(child: Text("M")),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border: Border.all(width: 1)),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                height: 25,
                                width: 25,
                                child: Center(child: Text("S")),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border: Border.all(width: 1)),
                              ),
                            ],
                          )

                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(30)),
                        child: Center(child: Text("View Details")),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 230,
                width: 180,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("myassets/image/g1.jpg"),),borderRadius:BorderRadius.only(topLeft: Radius.circular(60),bottomLeft: Radius.circular(60))
                ),
              )

            ],
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.yellow.shade300,
            child:
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                    child: Text("Featured Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 70,
                      //child: Image(image: AssetImage("myassets/image/t-shirt.jpg")),
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("myassets/image/t-shirt.jpg"),),borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 70,
                      //child: Image(image: AssetImage("myassets/image/t-shirt.jpg")),
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("myassets/image/shirt.jpg"),),borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 70,
                      //child: Image(image: AssetImage("myassets/image/t-shirt.jpg")),
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("myassets/image/jeans.webp"),),borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 70,
                      //child: Image(image: AssetImage("myassets/image/t-shirt.jpg")),
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("myassets/image/shorts.webp"),),borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   Container(
                     height: 30,
                     width: 70,
                     child: Center(child: Text("T-shirt")),
                     decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(30),color: Colors.white),
                   ),
                    Container(
                      height: 30,
                      width: 70,
                      child: Center(child: Text("Shirt")),
                      decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(30),color: Colors.white),
                    ),
                    Container(
                      height: 30,
                      width: 70,
                      child: Center(child: Text("Jeans")),
                      decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(30),color: Colors.white),
                    ),
                    Container(
                      height: 30,
                      width: 70,
                      child: Center(child: Text("Shorts")),
                      decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(30),color: Colors.white),
                    )
                  ],
                )
              ],
            ),

          ),
          SizedBox(height: 5,),
          Container(
            child: Text("Set Your Wardrobe With Our \n Amazing Selection !",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 5,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 100,width: 100,
                  //child: Image(image: AssetImage("myassets/image/child.jpg"),),
              decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("myassets/image/child.jpg"),),borderRadius: BorderRadius.circular(50)
     ),
              ),
              Container(
                height: 100,width: 100,
                //child: Image(image: AssetImage("myassets/image/child.jpg"),),
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("myassets/image/men5.jpg"),),borderRadius: BorderRadius.circular(50)
                ),
              ),
              Container(
                height: 100,width: 100,
                //child: Image(image: AssetImage("myassets/image/child.jpg"),),
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("myassets/image/g2.jpg"),),borderRadius: BorderRadius.circular(50)
                ),
              ),


            ],
          ),
          SizedBox(height: 8,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 30,
                width: 70,
                child: Center(child: Text("Child")),
                decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(30),color: Colors.white),
              ),
              Container(
                height: 30,
                width: 70,
                child: Center(child: Text("Man")),
                decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(30),color: Colors.white),
              ),
              Container(
                height: 30,
                width: 70,
                child: Center(child: Text("Woman")),
                decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(30),color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 12,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {

              }, icon: Icon(Icons.home_filled)),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.favorite_outline)),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.event_note)),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.person)),
            ],
          )




        ],
      ),
    );
  }
}



// Add to cart logic...


// import 'package:flutter/material.dart';
// import 'package:task_product/addcart.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class Product {
//   final String name;
//   final double price;
//   int quantity;
//
//   Product({required this.name, required this.price, this.quantity = 1});
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   List<Product> products = [
//     Product(name: 'Product 1', price: 20.0,),
//     Product(name: 'Product 2', price: 30.0),
//     Product(name: 'Product 3', price: 15.0),
//     // Add more products as needed
//   ];
//
//   List<Product> cart = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping App'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: products.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(products[index].name),
//                   subtitle: Text('\$${products[index].price.toString()}'),
//                   trailing: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {
//                           // Navigator.push(context, MaterialPageRoute(builder: (context) {
//                           //    return addcart();
//                           // },));
//                            addToCart(products[index]);
//                         },
//                         child: Text('Add to Cart'),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           Divider(),
//           Expanded(
//             child: ListView.builder(
//               itemCount: cart.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(cart[index].name),
//                   subtitle: Text('\$${cart[index].price.toString()}'),
//                   trailing: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {
//                           increaseQuantity(index);
//                         },
//                         child: Text('+'),
//                       ),
//                       Text(cart[index].quantity.toString()),
//                       ElevatedButton(
//                         onPressed: () {
//                           decreaseQuantity(index);
//                         },
//                         child: Text('-'),
//                       ),
//                       ElevatedButton(
//                         onPressed: () {
//                           removeFromCart(index);
//                         },
//                         child: Text('Remove'),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void addToCart(Product product) {
//     setState(() {
//       // Check if the product is already in the cart
//       int existingIndex = cart.indexWhere((item) => item.name == product.name);
//
//       if (existingIndex != -1) {
//         // If it exists, increase the quantity
//         cart[existingIndex].quantity++;
//       } else {
//         // If it doesn't exist, add it to the cart with quantity 1
//         cart.add(product);
//       }
//     });
//   }
//
//   void removeFromCart(int index) {
//     setState(() {
//       cart.removeAt(index);
//     });
//   }
//
//   void increaseQuantity(int index) {
//     setState(() {
//       cart[index].quantity++;
//     });
//   }
//
//   void decreaseQuantity(int index) {
//     setState(() {
//       if (cart[index].quantity > 1) {
//         cart[index].quantity--;
//       } else {
//         removeFromCart(index);
//       }
//     });
//   }
// }


