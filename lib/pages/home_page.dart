import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final String days = 'Friday';
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
