import 'package:flutter/material.dart';
import 'package:food_app_ui/screen/auth/login/widget/email_password_field.dart';
import 'package:food_app_ui/screen/auth/login/widget/login_top_text.dart';

import '../../../utils/app_color.dart';
import '../../../utils/size_config.dart';
import '../mobile_socialmedia_signin/widgets/social_icon.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGreyColor,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: SizeConfig.screenWidth!/18,top: SizeConfig.screenHeight!/33.6), // 20 20
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginTopText(),
                SocialIcons(),
                EmailPasswordField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
