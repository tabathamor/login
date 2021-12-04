import 'package:flutter/material.dart';
import 'package:login_signup_ui_starter/theme.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({ Key key }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
    bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
   return Column(
      children: [
        buildInputForm("Email", false),
        buildInputForm("Password", true),
      ],
    );
  }

  Padding buildInputForm(String label, bool pass) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: pass ?_isObscure : false,
        decoration: InputDecoration(
          labelText: label, 
          labelStyle: TextStyle(
            color: kTextFieldColor
            ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor)
          ),
          suffix: pass ? IconButton(
            onPressed: (){
              setState(() {
                _isObscure = !_isObscure;
              });
            }, 
            icon: _isObscure ? Icon(
              Icons.visibility_off, 
              color: kTextFieldColor,
              ): Icon(Icons.visibility, color: kPrimaryColor,) 
          ): null
          ),
      ),
      );
  }
}