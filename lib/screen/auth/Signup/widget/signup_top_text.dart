import 'package:flutter/material.dart';

import '../../../../utils/app_color.dart';
import '../../../../widget/custom_text.dart';

class SignupTopText extends StatelessWidget {
  const SignupTopText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Create Your Account',size: 22,
          color: AppColor.blackColor,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: 20,
        ),

        CustomText(
          text: 'Please Enter Your Credentials in the Form\n Below..!',size: 16,
          color: AppColor.greyColor,
        ),

        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
