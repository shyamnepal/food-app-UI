import 'package:flutter/material.dart';
import 'package:food_app_ui/screen/auth/login/login.dart';
import 'package:food_app_ui/screen/auth/otp/widget/text_field_otp.dart';
import 'package:food_app_ui/utils/app_color.dart';
import 'package:food_app_ui/utils/size_config.dart';
import 'package:food_app_ui/widget/CustomButton.dart';
import 'package:food_app_ui/widget/customTextButton.dart';
import 'package:food_app_ui/widget/custom_text.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.lightGreyColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsets.only(left: SizeConfig.screenWidth!/18, top: SizeConfig.screenHeight!/16.8,),  //20 40
            child: Container(
              height: SizeConfig.screenHeight!-80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: 'One Time Password',color: AppColor.blackColor, size: SizeConfig.screenWidth!/18, fontWeight: FontWeight.bold,), //20
                 SizedBox(height: SizeConfig.screenHeight!/22.4), // 30
                  CustomText(text: 'Please enter 6-Digit verification Code sent by', color: AppColor.greyColor, size: SizeConfig.screenWidth!/22.5,), //16
                  CustomText(text: 'SMS On your Mobile Number (+1)',color: AppColor.greyColor, size: SizeConfig.screenWidth!/22.5,), //16
                  CustomText(text: '9843117125',color: AppColor.greyColor, size: SizeConfig.screenWidth!/22.5,), // 16
                  SizedBox(height: SizeConfig.screenHeight!/22.4,), //30

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomText(text: '0:59',size: SizeConfig.screenWidth!/18,color: AppColor.blackColor, fontWeight: FontWeight.bold,), //20
                      SizedBox(width: SizeConfig.screenWidth!/9,),  //40
                      CustomTextButton(text: 'Resend OTP', tap: (){},color: AppColor.redColor,)
                    ],
                  ),

                 SizedBox(height: SizeConfig.screenHeight!/33.6), // 20
                  CustomText(text: 'Mobile No',size: SizeConfig.screenWidth!/18,color: AppColor.blackColor, fontWeight: FontWeight.bold,), // 20
                 SizedBox(height: SizeConfig.screenHeight!/33.6),  //20

                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextFeildOTP(
                          first: true, last: false, height: height * .127),
                      TextFeildOTP(
                          first: false, last: false, height: height * .127),
                      TextFeildOTP(
                          first: false, last: false, height: height * .127),
                      TextFeildOTP(
                          first: false, last: false, height: height * .127),
                      TextFeildOTP(
                          first: false, last: false, height: height * .127),
                      TextFeildOTP(
                          first: false, last: true, height: height * .127),
                    ],
                  ),

                  SizedBox(height: SizeConfig.screenHeight!/33.6,), // 20
                  CustomButton(text: 'Submit', onpress: (){},),
                  Spacer(),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(text: 'Or',size: SizeConfig.screenWidth!/18,color: AppColor.blackColor, fontWeight: FontWeight.bold,), // 20
                        CustomTextButton(text: 'SKIP LOGIN', tap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));

                        })
                      ],
                    ),
                  )


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
