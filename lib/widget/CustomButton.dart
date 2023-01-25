import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,
    required this.text,
    this.color=AppColor.redColor,
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
      margin: EdgeInsets.only(bottom: 15),
      child: ElevatedButton(
        onPressed: onpress,
        child: Text( text),
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radious),

          ),
          backgroundColor: color,
        ),
      ),
    );
  }
}
