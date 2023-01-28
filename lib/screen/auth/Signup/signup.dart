import 'package:flutter/material.dart';
import 'package:food_app_ui/screen/auth/Signup/widget/email_password.dart';
import 'package:food_app_ui/screen/auth/Signup/widget/signup_top_text.dart';
import 'package:food_app_ui/screen/auth/mobile_socialmedia_signin/widgets/social_icon.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
            child: Column(

              children: [
                SignupTopText(),
                SocialIcons(),
                SignupEmailPasswor(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
