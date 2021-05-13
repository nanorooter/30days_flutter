import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  int days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Day1'),
      ),
      body: Center(
        child: Text('Welcome to the $days Anime World'),
      ),
    );
  }
}
