import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/custom_button.dart';
import 'package:food_delivery_app/widgets/custom_text_field.dart';

class SignupPage extends StatefulWidget {
  static Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  RegExp regExp = RegExp(SignupPage.pattern);
  final TextEditingController fnameController = TextEditingController();
  final TextEditingController lNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  void validate() {
    if (fnameController.text.trim().isEmpty ||
        fnameController.text.trim() == null) {
      globalKey.currentState
          .showSnackBar(SnackBar(content: Text('First name can\'t be empty')));
    } else if (lNameController.text.trim().isEmpty ||
        lNameController.text.trim() == null) {
      globalKey.currentState
          .showSnackBar(SnackBar(content: Text('Last Name can\'t be empty')));
    } else if (emailController.text.trim().isEmpty ||
        emailController.text.trim() == null) {
      globalKey.currentState
          .showSnackBar(SnackBar(content: Text('Email can\'t be empty')));
    } else if (!regExp.hasMatch(emailController.text)) {
      globalKey.currentState
          .showSnackBar(SnackBar(content: Text('Email is invalid')));
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
            'Sign Up',
            style: TextStyle(
              fontSize: 50.0,
              color: Colors.white,
            ),
          ),
          Column(
            children: [
              CustomTextField(
                text: "First Name",
                controller: fnameController,
                obscureText: false,
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomTextField(
                text: "Last Name",
                controller: lNameController,
                obscureText: false,
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomTextField(
                text: "Email",
                obscureText: false,
                controller: emailController,
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomTextField(
                text: "Password",
                obscureText: true,
                controller: passwordController,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                color: Colors.red,
                text: "Register",
                onPressed: () {
                  validate();
                },
                textColor: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
