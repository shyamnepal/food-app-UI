import 'package:flutter/material.dart';
import 'package:food_app_ui/screen/auth/forgetpassword/create_password.dart';
import 'package:food_app_ui/screen/auth/forgetpassword/widget/forget_Email_textFields.dart';
import 'package:food_app_ui/screen/auth/forgetpassword/widget/forget_password_top_text.dart';
import 'package:food_app_ui/screen/auth/mobile_socialmedia_signin/widgets/social_icon.dart';
import 'package:food_app_ui/widget/CustomButton.dart';

import '../../../utils/app_color.dart';
import '../../../utils/size_config.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGreyColor,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: SizeConfig.screenWidth!/18, right: SizeConfig.screenWidth!/18,top: SizeConfig.screenHeight!/13.44), // 20, 20 , 50
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ForgetPasswordTopText(),
                SocialIcons(),
                ForgetEmailTextFields(),
                CustomButton(text: "Send", onpress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> CreatePassword()));

                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
