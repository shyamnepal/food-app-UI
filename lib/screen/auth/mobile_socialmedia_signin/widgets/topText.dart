import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/size_config.dart';

import '../../../../utils/app_color.dart';
import '../../../../widget/custom_text.dart';

class TopText extends StatelessWidget {
  const TopText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'VegaFast Food..!',size: SizeConfig.screenWidth!/16.36, // 22
          color: AppColor.blackColor,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: SizeConfig.screenHeight!/33.6), //20

        CustomText(
          text: 'Login to Unlock Awesome New Features',size: SizeConfig.screenWidth!/22.5, //16
          color: AppColor.greyColor,
        ),

        SizedBox(height: SizeConfig.screenHeight!/33.6), //20
      ],
    );
  }
}
