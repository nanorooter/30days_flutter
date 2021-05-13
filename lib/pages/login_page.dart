import 'package:flutter/material.dart';
import 'package:flutter_recipe/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
          child: Column(
        children: [
          Image.asset('images/undraw.png'),
          SizedBox(
            height: 20,
          ),
          Text(
            'Welcome to Login Tutorial',
            style: GoogleFonts.capriola(
                fontSize: 20, color: Colors.deepPurple[200]),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter Username', labelText: 'Username'),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Enter Password', labelText: 'Password'),
                ),
              ],
            ),
          ),
          ElevatedButton(
            child: Icon(
              Icons.assignment_turned_in_rounded,
            ),
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
          )
        ],
      )),
    );
  }
}
