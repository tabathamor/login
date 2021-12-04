import 'package:flutter/material.dart';
import 'package:login_signup_ui_starter/screens/login_page.dart';
import 'package:login_signup_ui_starter/theme.dart';
import 'package:login_signup_ui_starter/widget/check_box.dart';
import 'package:login_signup_ui_starter/widget/login_options.dart';
import 'package:login_signup_ui_starter/widget/primary_%20button.dart';
import 'package:login_signup_ui_starter/widget/signup_form.dart';

class SignUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70,),
            Padding(
              padding: kDefaultPadding,
              child: Text(
                'Create Account',
                style: titleText,
              ),
            ),
            SizedBox(height: 5,),
             Padding(
               padding: kDefaultPadding,
               child: Row(
                 children: [
                   Text('Already a member?', style: subTitle,),
                   SizedBox(width: 5,),
                   GestureDetector(
                     onTap: (){
                       Navigator.push(
                         context, MaterialPageRoute(
                           builder: (context) => LoginPage(),
                         ));
                     },
                     child: Text('Login',
                     style: textButton.copyWith(
                       decoration: TextDecoration.underline, 
                       decorationThickness: 1),),
                   )
                 ],
               ),
             ),
             SizedBox(height: 10,),
             Padding(
               padding: kDefaultPadding,
               child: SignUpForm(),
             ),
             SizedBox(height: 20,),
             Padding(
               padding: kDefaultPadding,
               child: CheckBox('Agree to terms and conditions'),
             ),
            SizedBox(height: 10,),
             Padding(
               padding: kDefaultPadding,
               child: CheckBox('I have at least 18 years old'),
             ),
            SizedBox(height: 20,),
            Padding(
              padding: kDefaultPadding,
              child: PrimaryButton(buttonText: 'Sign Up'),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: kDefaultPadding,
              child: Text('Or Log In with', style: subTitle.copyWith(color: kBlackColor),),
            ),            
             SizedBox(height: 20,),
             Padding(
               padding: kDefaultPadding,
               child: LoginOptions(),
             ),


          ],
        ),),
    );
  }
}