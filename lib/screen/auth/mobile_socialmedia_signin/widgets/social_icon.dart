import 'package:flutter/material.dart';

import '../../../../widget/custom_text.dart';
import '../../../../widget/socialmediaIcon.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SocialMediaIcon(imageSource: 'images/iconImages/facebook.png'),
                  SocialMediaIcon(imageSource: 'images/iconImages/google.png')

                ],
              ),
              CustomText(
                text: 'or',
                fontWeight: FontWeight.bold,
                size: 20,
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
