import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/custom_button.dart';
import 'package:food_delivery_app/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  void validate() {
    if (emailController.text.trim().isEmpty ||
        emailController.text.trim() == null) {
      globalKey.currentState
          .showSnackBar(SnackBar(content: Text('Email can\'t be empty')));
    } else if (passwordController.text.trim().isEmpty ||
        passwordController.text.trim() == null) {
      globalKey.currentState
          .showSnackBar(SnackBar(content: Text('Password can\'t be empty')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
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
                text: "Email",
                obscureText: false,
                controller: emailController,
              ),
              CustomTextField(
                icon: Icons.lock_outlined,
                text: "Password",
                obscureText: true,
                controller: passwordController,
              ),
            ],
          ),
          CustomButton(
            color: Colors.red,
            text: "Log In",
            textColor: Colors.white,
            onPressed: () {
              validate();
            },
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
          ),
        ],
      ),
    );
  }
}
