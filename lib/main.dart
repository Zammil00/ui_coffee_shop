import 'package:flutter/material.dart';
import 'package:ui_coffee_shop/pages/home_page.dart';
import 'package:ui_coffee_shop/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
    );
  }
}
