import 'package:flutter/material.dart';
import 'package:food_app_ui/screen/auth/Signup/signup.dart';
import 'package:food_app_ui/screen/auth/forgetpassword/forget_password.dart';
import 'package:food_app_ui/utils/size_config.dart';
import 'package:food_app_ui/widget/CustomButton.dart';
import 'package:food_app_ui/widget/customTextButton.dart';
import 'package:food_app_ui/widget/custom_text.dart';

import '../../../../utils/app_color.dart';

class EmailPasswordField extends StatelessWidget {
  const EmailPasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: 'Email or Mobile No',color: AppColor.blackColor, size: SizeConfig.screenWidth!/20, fontWeight: FontWeight.bold,), // 18
        Container(
          margin: EdgeInsets.only(left: SizeConfig.screenWidth!/72, right: SizeConfig.screenWidth!/9,top: SizeConfig.screenHeight!/67.2), // 5, 40, 10
          height: SizeConfig.screenHeight!/13.44, //50
          width: double.infinity,
          child: TextFormField(

            decoration: InputDecoration(
                hintText: '9854321234',
                hintStyle: TextStyle(color: AppColor.pureGreyColor),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: AppColor.pureGreyColor,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(SizeConfig.screenWidth!/9), //40

                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(SizeConfig.screenWidth!/9),  //40
                  borderSide: BorderSide(
                      color: AppColor.pureGreyColor,
                    width: 3,
                  ),
                )
            ),
          ),
        ),

        SizedBox(height: SizeConfig.screenHeight!/33.6,), //20

        CustomText(text: 'Password',color: AppColor.blackColor, size: SizeConfig.screenWidth!/20, fontWeight: FontWeight.bold,), //18
        Container(
          margin: EdgeInsets.only(left: SizeConfig.screenWidth!/72, right: SizeConfig.screenWidth!/9,top: SizeConfig.screenHeight!/67.2), //5 40 10
          height: SizeConfig.screenHeight!/13.44, //50
          width: double.infinity,
          child: TextFormField(

            decoration: InputDecoration(
                hintText: '**********',
                hintStyle: TextStyle(color: AppColor.pureGreyColor),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.pureGreyColor,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(SizeConfig.screenWidth!/9), //40

                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(SizeConfig.screenWidth!/9),  //40
                  borderSide: BorderSide(
                    color: AppColor.pureGreyColor,
                    width: 3,
                  ),
                )
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(right: SizeConfig.screenWidth!/18), //20
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgetPassword()));
              }, child: CustomText(text:  'Forget Password ?',color: AppColor.blackColor, size: SizeConfig.screenWidth!/20, //18
              ),
              ),

              SizedBox(height: SizeConfig.screenHeight!/67.2,), //10



            ],
          ),
        ),
        CustomButton(text: 'Login', onpress: (){}),
        Center(
          child: Column(
            children: [
              CustomText(text: 'Or',size: SizeConfig.screenWidth!/18,color: AppColor.blackColor,), //20
              SizedBox(height: SizeConfig.screenHeight!/67.2,), //10
              CustomTextButton(text: 'SKIP LOGIN', tap: (){}),

              SizedBox(height: SizeConfig.screenHeight!/67.2,), //10

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup()));
                },

                child: RichText(text: TextSpan(
                  children: [
                     TextSpan(text: "Don't Have An Account? ",style: TextStyle(color: AppColor.blackColor,fontSize: SizeConfig.screenWidth!/20)), //18
                    TextSpan(text: "Register",style: TextStyle(color: AppColor.redColor,decoration:TextDecoration.underline,fontSize: SizeConfig.screenWidth!/20), //18
                    )
                  ]
                )),
              )
            ],
          ),
        )
      ],
    );
  }
}
