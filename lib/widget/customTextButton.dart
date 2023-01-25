import 'package:flutter/material.dart';

import '../utils/app_color.dart';



class CustomTextButton extends StatelessWidget {
  const CustomTextButton({Key? key,
    this.color=AppColor.blueColor,
    required this.text,
    required this.tap,
    this.fontSize=18

  }) : super(key: key);

  final Color color;
  final String text;
  final VoidCallback tap;
  final double fontSize;


  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: tap, child:Text(
      text,style: TextStyle(
      decoration: TextDecoration.underline,
      color: color,
      fontSize: fontSize,

    ),)
    );
  }
}
