import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app_ui/model/unboarding_content.dart';
import 'package:food_app_ui/screen/auth/mobile_socialmedia_signin/mobile_socialmedia_signin.dart';
import 'package:food_app_ui/screen/splash_screen/widgets/buttons.dart';
import 'package:food_app_ui/screen/splash_screen/widgets/indicator.dart';
import 'package:food_app_ui/screen/splash_screen/widgets/middle_text.dart';
import 'package:food_app_ui/screen/splash_screen/widgets/top_image_text.dart';
import 'package:food_app_ui/utils/app_color.dart';
import 'package:food_app_ui/utils/size_config.dart';
import 'package:food_app_ui/widget/CustomButton.dart';
import 'package:food_app_ui/widget/custom_text.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List<UnboardingContent> contents=[
    UnboardingContent(
        title: 'Home Cooked food for your Daily Meals' ,
        description: 'While these words can be related to fast food  they suggest that can expect a sweet',
        imgUrl: 'images/onboarding/frypan.png'),
    UnboardingContent(
        title: 'Delivered Fast Food to your Door' ,
        description: 'While these words can be related to fast food  they suggest that can expect a sweet',
        imgUrl: 'images/onboarding/frypan.png'),
    UnboardingContent(
        title: 'Get The Fastest Delivery food for you' ,
        description: 'While these words can be related to fast food  they suggest that can expect a sweet',
        imgUrl: 'images/onboarding/frypan.png'),
  ];
  int currentIndex=0;
  late PageController _controller;

  @override
  void initState() {
    _controller=PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    debugPrint(SizeConfig.screenHeight.toString());
    debugPrint(SizeConfig.screenWidth.toString());

    return Scaffold(
    backgroundColor: AppColor.lightGreyColor,
      body: Column(

        children: [
          Expanded(

            child: PageView.builder(
              controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index){
                  setState(() {
                    currentIndex=index;
                  });
                },
                itemBuilder: (_,index){
              return Padding(
                padding:  EdgeInsets.only(top: SizeConfig.screenHeight!/8.4),
                child: Column(
                  children: [
                    TopImageText(imageUrl: contents[index].imgUrl, imageHeight: SizeConfig.screenHeight!/3.95),
                    MiddleText(title: contents[index].title, description: contents[index].description),
                    Indicator(currentIndex: currentIndex, contentsLength: contents.length),
                    OnboardingButtons(currentIndex: currentIndex, contentLength: contents.length,controller: _controller,),
                  ],
                ),
              );
            }),
          ),

        ],
      ),

    );
  }

}
