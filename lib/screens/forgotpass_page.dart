import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:login_signup_ui_starter/screens/login_page.dart';
import 'package:login_signup_ui_starter/theme.dart';
import 'package:login_signup_ui_starter/widget/primary_%20button.dart';
import 'package:login_signup_ui_starter/widget/reset_form.dart';

class ResetPass extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 200,),
                Text('Reset Password', style: titleText, ),
                SizedBox(height: 5,),
                Text('Please enter yout email', style: subTitle.copyWith(fontWeight: FontWeight.w600)),
                SizedBox(height: 10,),
                ResetForm(),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => LoginPage()),);
                  },
                  child: PrimaryButton(buttonText: 'Reset Password',),

                )
              ],
              ),
      ),
      
    );
  }
}