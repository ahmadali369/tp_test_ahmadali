import 'package:flutter/material.dart';
import 'package:tp_test/presentation/pages/splashScreen.dart';
void main() {
  runApp(const OnlineShopApp());
}

class OnlineShopApp extends StatelessWidget {
  const OnlineShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OnlineShop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Arial',
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}





