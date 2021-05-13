import 'package:flutter/material.dart';
import 'package:flutter_recipe/pages/home_page.dart';
import 'package:flutter_recipe/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      // home: Homepage(),
      routes: {
        "/": (context) => Homepage(),
        "/home": (context) => Homepage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
