import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/size_config.dart';
import '../../../widget/CustomButton.dart';
import '../../auth/mobile_socialmedia_signin/mobile_socialmedia_signin.dart';

class OnboardingButtons extends StatelessWidget {
  const OnboardingButtons({Key? key,
    required this.currentIndex,
    required this.contentLength,
    required this.controller,


  }) : super(key: key);

  final int currentIndex;
  final int contentLength;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(height: SizeConfig.screenHeight!/33.6), //20
        CustomButton(
            text: currentIndex ==contentLength-1? 'Get Started': 'Next',
            onpress: (){
              if(currentIndex==contentLength-1){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MobilSocialmediaSignIN()));
              }
              controller.nextPage(
                  duration: Duration(microseconds: 150000),
                  curve: Curves.bounceIn);
            })
      ],
    );
  }
}
