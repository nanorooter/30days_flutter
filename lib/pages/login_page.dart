import 'package:flutter/material.dart';
import 'package:flutter_recipe/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;

  final _formKey = GlobalKey<FormState>();

  movetoHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){

    setState(() {
      changedButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
  }
 }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
          child: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset('images/undraw.png'),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome to Login \n $name',
              textAlign: TextAlign.center,
              style: GoogleFonts.capriola(
                fontSize: 20,
                color: Colors.deepPurple[200],
              ),
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "*Required Field";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Enter Password', labelText: 'Password'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "*Required Field";
                      } else if (value.length < 6) {
                        return "Password cannot be less than 6";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => movetoHome(context),
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                alignment: Alignment.center,
                height: 50,
                width: changedButton ? 50 : 150,
                child: changedButton
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : Text(
                        'Login',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(changedButton ? 50 : 8),
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
