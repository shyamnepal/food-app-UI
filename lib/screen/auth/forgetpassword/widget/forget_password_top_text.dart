import 'package:flutter/material.dart';

import '../../../../utils/app_color.dart';
import '../../../../utils/size_config.dart';
import '../../../../widget/custom_text.dart';

class ForgetPasswordTopText extends StatelessWidget {
  const ForgetPasswordTopText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Forgot Password',size:  SizeConfig.screenWidth!/16.36, // 22,
          color: AppColor.blackColor,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: SizeConfig.screenHeight!/33.6, //20
        ),

        CustomText(
          text: "Enter Your Email Address below & We'll send"
              "you an Email with Instructions on how to "
              "change your Password"
              ,size: SizeConfig.screenWidth!/22.5,  //16
          color: AppColor.greyColor,
        ),

        SizedBox(
          height: SizeConfig.screenHeight!/33.6, //20
        ),
      ],
    );

  }
}
