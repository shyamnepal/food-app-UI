import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/size_config.dart';
import '../../../utils/app_color.dart';
import '../../../widget/custom_text.dart';

class TopImageText extends StatelessWidget {
  const TopImageText({Key? key,
    required this.imageUrl,
    required this.imageHeight,

  }) : super(key: key);
  final String imageUrl;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageUrl,height: imageHeight,),
        RichText(text:  TextSpan(

            children:  [
              TextSpan(text: 'VegaFast ',style: TextStyle(
                color: AppColor.redColor,
                fontSize: SizeConfig.screenWidth!/12.95,  //28
                fontWeight: FontWeight.bold,

              )),
              TextSpan(text: 'Food', style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.screenWidth!/12.95,  //28
                fontWeight: FontWeight.bold,
              ),),
            ]
        )
        ),
       SizedBox(height: SizeConfig.screenHeight!/134.4),  //5
        CustomText(
          text: 'HOME MADE FOOD RESTUARENT',
          size: SizeConfig.screenWidth!/20,   //18

        ),
        SizedBox(height: SizeConfig.screenHeight!/6.72), //100
      ],
    );
  }
}
