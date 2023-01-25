import 'package:flutter/material.dart';

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
          text: 'VegaFast Food..!',size: 22,
          color: AppColor.blackColor,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: 20,
        ),

        CustomText(
          text: 'Login to Unlock Awesome New Features',size: 16,
          color: AppColor.greyColor,
        ),

        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
