import 'package:flutter/material.dart';

import '../../../../utils/app_color.dart';


class ContinueWithEmail extends StatelessWidget {
  const ContinueWithEmail({Key? key,
    required this.text,
    this.color=AppColor.lightGreyColor,
    this.width=290,
    this.height=50,
    required this.onpress,
    this.radious=25,

  }) : super(key: key);

  final double height;
  final double width;
  final Color color;
  final VoidCallback onpress;
  final String text;
  final double radious;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(bottom: 20),
      child: ElevatedButton(
        onPressed: onpress,
        child: Text( text),
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(color: Colors.white),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: AppColor.greyColor
            ),
            borderRadius: BorderRadius.circular(radious),

          ),
          backgroundColor: color,
        ),
      ),
    );
  }
}
