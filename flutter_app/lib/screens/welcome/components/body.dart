import 'package:flutter/material.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/screens/login/login_screen.dart';
import 'package:flutter_app/screens/signup/signup_screen.dart';

import 'background.dart';

class Body extends StatelessWidget {
  final TextStyle style = TextStyle(fontFamily: 'Roboto', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "WELCOME TO PUPPY HUB",
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Image.asset(
            'assets/images/logo.jpg',
            height: size.height * 0.45,
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
          ),
          RoundedButton(
            text: "SIGN UP",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUpScreen(),
                ),
              );
            },
            textColor: Colors.black,
            backgroundColor: kPrimaryLightColor,
          )
        ],
      ),
    );
  }
}
