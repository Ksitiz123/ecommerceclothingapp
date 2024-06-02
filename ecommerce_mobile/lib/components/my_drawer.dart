import 'package:ecommerce_mobile/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [

          // drawer header: logo 
          DrawerHeader(
            child: 
            Center(
              child: Icon(
                Icons.shopping_bag,
              color: 
              Theme.of(context).colorScheme.inversePrimary,
              size: 72,
              ),
            ),
            ),

            const SizedBox(height:25),

          // shop tile
          MyListTile(
            text: "Shop", 
            icon: Icons.home, 
            onTap: () => Navigator.pop(context),
          ),


          // cart tile
            MyListTile(
            text: "Cart", 
            icon: Icons.shopping_cart, 
            onTap: () {
              //pop drawer first 
              Navigator.pop(context);
              //go to cart page
              Navigator.pushNamed(context, '/cart_page');              
            }
          ),


          // Setting tile
          MyListTile(
            text: "Setting", 
            icon: Icons.settings, 
            onTap: () {Navigator.pop(context);

            // go to settings page
            Navigator.pushNamed(context, '/setting_page');
            }
          ),

          ],
          ),

          //exit shop tile
            Padding(
              padding: const EdgeInsets.only(bottom:25.0),
              child: MyListTile(
              text: "Exit", 
              icon: Icons.logout, 
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                context, 
                '/intro_page', 
                (route) => false),
              ),
            ),
        ],
      ),
    );
  }
}