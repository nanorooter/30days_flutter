import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day1'),
      ),
      body: Center(
        child: Text('Welcome to the $days Anime World'),
      ),
    );
  }
}
