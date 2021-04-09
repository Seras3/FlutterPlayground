import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color backgroundColor, textColor;

  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.backgroundColor = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.7,
      child: TextButton(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: press,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          primary: textColor,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
