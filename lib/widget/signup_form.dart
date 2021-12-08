import 'package:flutter/material.dart';
import 'package:login_signup_ui_starter/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignUpForm extends StatefulWidget {

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('First Name', false),
        buildInputForm('Last Name', false),
        buildInputForm('Email', false),
        buildInputForm('Phone', false),
        buildInputForm('Password', true),
        buildInputForm('Confirm Password', true),
      ],
    );
  }

  Padding buildInputForm(String hint, bool pass) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: pass ? _isObscure : false,
        decoration: InputDecoration(
          hintText: hint, 
          hintStyle: TextStyle(color: kTextFieldColor),
          focusedBorder: UnderlineInputBorder(
            borderSide: 
            BorderSide(
              color:  kPrimaryColor),),
              suffixIcon: pass ? IconButton(
                onPressed: (){
                  setState(() {
                    _isObscure = ! _isObscure;
                  });
              }, 
              icon: _isObscure ? Icon(Icons.visibility_off, color: kTextFieldColor,)
               : Icon(Icons.visibility, color: kTextFieldColor, )
              ,
              )
              :null
              
          ),    
        ), 
      );
  }
}

class _RegistrationScreenState extends StatefulWidget {
  final _auth = FirebaseAuth.instance;
    String email;
    String password;
    bool showSpinner = false;
  @override
  __RegistrationScreenStateState createState() => __RegistrationScreenStateState();
}

class __RegistrationScreenStateState extends State<_RegistrationScreenState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}