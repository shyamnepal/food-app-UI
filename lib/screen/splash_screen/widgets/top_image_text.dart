import 'package:flutter/material.dart';

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
        SizedBox(
          height: 10,
        ),
        RichText(text: TextSpan(

            children: [
              TextSpan(text: 'VegaFast ',style: TextStyle(
                color: AppColor.redColor,
                fontSize: 28,
                fontWeight: FontWeight.bold,

              )),
              TextSpan(text: 'Food', style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),),
            ]
        )
        ),
        SizedBox(
          height: 5,
        ),
        CustomText(
          text: 'HOME MADE FOOD RESTUARENT',
          size: 18,

        ),
        SizedBox(
          height: 100,
        ),
      ],
    );
  }
}
