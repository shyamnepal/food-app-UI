import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  double size;
  Color color;
  FontWeight fontWeight;
  TextAlign textAlign;


  CustomText(
      {Key? key,
        required this.text,
        this.color = Colors.black,
        this.size = 14.0,
        this.fontWeight=FontWeight.normal,
        final this.textAlign=TextAlign.start,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
            color: color, fontSize: size, fontWeight: fontWeight),
        textAlign: textAlign,
      ),
    );
  }
}