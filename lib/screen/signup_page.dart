import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/custom_button.dart';
import 'package:food_delivery_app/widgets/custom_text_field.dart';

class SignupPage extends StatelessWidget {
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
            'Sign Up',
            style: TextStyle(
              fontSize: 50.0,
              color: Colors.white,
            ),
          ),
          Column(
            children: [
              CustomTextField(
                text: "Name",
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomTextField(
                text: "Username",
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomTextField(
                text: "Password",
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomTextField(
                text: "Confirm Password",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                color: Colors.white,
                text: "Cancel",
                textColor: Colors.black,
              ),
              SizedBox(
                width: 10.0,
              ),
              CustomButton(
                color: Colors.red,
                text: "Register",
                textColor: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
