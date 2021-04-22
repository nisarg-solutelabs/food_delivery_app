import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/custom_button.dart';
import 'package:food_delivery_app/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: FlatButton(
          color: Colors.black,
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Log In',
            style: TextStyle(
              fontSize: 50.0,
              color: Colors.white,
            ),
          ),
          Column(
            children: [
              CustomTextField(
                icon: Icons.person_outline,
                text: "username",
              ),
              CustomTextField(
                icon: Icons.lock_outlined,
                text: "Password",
              ),
            ],
          ),
          CustomButton(
            color: Colors.red,
            text: "Log In",
            textColor: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'New user?',
                style: TextStyle(color: Colors.grey, letterSpacing: 1.3),
              ),
              Text(
                "Register Now",
                style: TextStyle(color: Colors.red, letterSpacing: 1.3),
              ),
            ],
          )
        ],
      ),
    );
  }
}
