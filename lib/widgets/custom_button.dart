import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;

  CustomButton({this.color, this.text, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 45.0,
      child: RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 20.0),
        ),
      ),
    );
  }
}
