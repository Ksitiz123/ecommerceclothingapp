import 'package:ecommerce_mobile/models/shop.dart';
import 'package:ecommerce_mobile/pages/cart_page.dart';
import 'package:ecommerce_mobile/pages/intro_page.dart';
import 'package:ecommerce_mobile/pages/settings_page.dart';
import 'package:ecommerce_mobile/pages/shop_page.dart';
import 'package:ecommerce_mobile/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


  void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,

      routes: {
        '/intro_page': (context) => IntroPage(),
        '/shop_page': (context) => ShopPage(),
        '/cart_page': (context) => CartPage(),
        '/setting_page': (context) => SettingsPage(),
      }
      );
  }
}