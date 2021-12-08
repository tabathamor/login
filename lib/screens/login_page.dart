import 'package:flutter/material.dart';
import 'package:login_signup_ui_starter/screens/forgotpass_page.dart';
import 'package:login_signup_ui_starter/screens/signup_page.dart';
import 'package:login_signup_ui_starter/screens/home_page.dart';
import 'package:login_signup_ui_starter/theme.dart';
import 'package:login_signup_ui_starter/widget/login_form.dart';
import 'package:login_signup_ui_starter/widget/login_options.dart';
import 'package:login_signup_ui_starter/widget/primary_%20button.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding ,
        child: SingleChildScrollView (
          child: Column(
            children: [
            SizedBox(height: 120 ,),
            Text('Welcome Back', style: titleText,),
            SizedBox(height: 5,),
            Row(
              children: [
                Text('New to this app?'),
                SizedBox(width: 5,),
                GestureDetector(
                  onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(),));
                    },
                  child: Text('Sign Up', 
                  style: 
                  textButton.copyWith(
                    decoration: TextDecoration.underline, 
                    decorationThickness: 1),
                  ),
                )],
            ),
            SizedBox(height: 10,),
            LoginForm(),
            SizedBox(height: 20,),
            Row(children: [
               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) =>  ResetPass(), ));
                 },
                 child: Text("Forgot Password?", 
                    style: 
                      TextStyle(
                          color: kZambeziColor, 
                          fontSize: 14, decoration: 
                          TextDecoration.underline, decorationThickness: 1), ),
               ),
            ],),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
              },
              child: PrimaryButton(buttonText: 'Login',),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
               Text("Or login with",
                style: subTitle.copyWith(color: kBlackColor),)
              ]
            ),
            SizedBox(height: 20,),
            LoginOptions()
        
        
           
          ],),
        ),
      ),
    );
  }
}