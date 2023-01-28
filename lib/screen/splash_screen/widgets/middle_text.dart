import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/size_config.dart';

import '../../../utils/app_color.dart';
import '../../../widget/custom_text.dart';

class MiddleText extends StatelessWidget {
  const MiddleText({Key? key,
    required this.title,
    required this.description,

  }) : super(key: key);
  final String title;
  final String description;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: SizeConfig.screenWidth!/1.71,   //210
          child: CustomText(
            text: title,
            color: AppColor.blackColor,
            fontWeight: FontWeight.bold,
            size: SizeConfig.screenWidth!/18,  //20
          ),
        ),


        SizedBox(
          height: SizeConfig.screenWidth!/18, //20
        ),

        Container(
          width: SizeConfig.screenWidth!/1.24,  //290
          child: CustomText(
            text: description,
            color: AppColor.greyColor,
            size: SizeConfig.screenWidth!/22.5, //16
          ),
        ),
      ],
    );
  }
}
