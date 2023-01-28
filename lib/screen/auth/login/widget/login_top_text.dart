import 'package:flutter/material.dart';

import '../../../../utils/app_color.dart';
import '../../../../utils/size_config.dart';
import '../../../../widget/custom_text.dart';

class LoginTopText extends StatelessWidget {
  const LoginTopText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Welcome Back.!',size: SizeConfig.screenWidth!/16.36, // 22
          color: AppColor.blackColor,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: SizeConfig.screenHeight!/33.6, //20
        ),

        CustomText(
          text: 'Please Enter Your Credentials in the Form\n Below..!',size: SizeConfig.screenWidth!/22.5, //16
          color: AppColor.greyColor,
        ),

        SizedBox(
          height: SizeConfig.screenHeight!/33.6, //20
        ),
      ],
    );
  }
}