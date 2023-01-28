import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_ui/screen/auth/mobile_socialmedia_signin/widgets/email_login_button.dart';
import 'package:food_app_ui/screen/auth/mobile_socialmedia_signin/widgets/mobile_number.dart';
import 'package:food_app_ui/screen/auth/mobile_socialmedia_signin/widgets/otpButton.dart';
import 'package:food_app_ui/screen/auth/mobile_socialmedia_signin/widgets/social_icon.dart';
import 'package:food_app_ui/screen/auth/mobile_socialmedia_signin/widgets/topText.dart';
import 'package:food_app_ui/utils/app_color.dart';
import 'package:food_app_ui/utils/size_config.dart';
import 'package:food_app_ui/widget/CustomButton.dart';
import 'package:food_app_ui/widget/customTextButton.dart';
import 'package:food_app_ui/widget/custom_text.dart';
import 'package:food_app_ui/widget/socialmediaIcon.dart';

import 'component/continue_with_email.dart';

class MobilSocialmediaSignIN extends StatefulWidget {
  const MobilSocialmediaSignIN({Key? key}) : super(key: key);

  @override
  State<MobilSocialmediaSignIN> createState() => _MobilSocialmediaSignINState();
}

class _MobilSocialmediaSignINState extends State<MobilSocialmediaSignIN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGreyColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(top: SizeConfig.screenHeight!/13.44,left: SizeConfig.screenWidth!/18), // 50 18
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                TopText(),
                SocialIcons(),
                MobileNumber(),
                OtpButton(),
                EmailLoginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
