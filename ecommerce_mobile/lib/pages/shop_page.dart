import 'package:ecommerce_mobile/components/my_drawer.dart';
import 'package:ecommerce_mobile/components/my_product_tile.dart';
import 'package:ecommerce_mobile/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {

    // access prodeuct is shop

    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text("Shop"),
      actions: [
        // go to cart button
        IconButton(onPressed: () => Navigator.pushNamed(context, '/cart_page'), icon: Icon(Icons.shopping_cart_outlined))
      ],
    ),
    drawer: const MyDrawer(),
    backgroundColor: Theme.of(context).colorScheme.background,
    body: ListView(
      children: [

        SizedBox(height: 25),
        // shop title
       // Text("SHOP"),


        // shop subtitle
        Center(
          child: Text(
            "Pick from a selected list of premium products",
          ),
        ),


        // product list
        SizedBox(
          height: 550,
          child: ListView.builder(
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(15),
            itemBuilder: (context, index){
          
              // get each individual product from shop
              final product = products[index];
          
          
              // return as a product tile UI
              return MyProductTile(product: product);
          
          }, 
          ),
        ),
        ],
      ),
   );
  }
}