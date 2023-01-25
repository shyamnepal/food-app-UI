import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({Key? key,
    required this.imageSource,
  }) : super(key: key);
  final String imageSource;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.greyColor,width: 2),
        borderRadius: BorderRadius.circular(50),


      ),
      child: IconButton(
        onPressed: (){},
        icon: Image.asset(imageSource),
      ),
    );
  }
}
