import 'package:flutter/material.dart';
import 'package:food_delivery_app/screen/login_page.dart';
import 'package:food_delivery_app/screen/signup_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Image.asset(
                  'images/logo1.jpg',
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Welcome to Tastee',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Column(
                    children: [
                      Text('Order food from our restaurant and'),
                      Text('make reservation in real time'),
                    ],
                  ),
                  WelcomeButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    text: "Login",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginPage();
                          },
                        ),
                      );
                    },
                  ),
                  WelcomeButton(
                    color: Colors.white,
                    textColor: Colors.green,
                    text: "Signup",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return SignupPage();
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomeButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final Function onPressed;
  WelcomeButton({this.color, this.text, this.textColor, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      width: 400.0,
      child: RaisedButton(
        color: color,
        textColor: textColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
