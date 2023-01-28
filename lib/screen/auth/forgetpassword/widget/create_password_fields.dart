import 'package:flutter/material.dart';

import '../../../../utils/app_color.dart';
import '../../../../utils/size_config.dart';
import '../../../../widget/CustomButton.dart';
import '../../../../widget/custom_text.dart';

class CreatePasswordTextFields extends StatelessWidget {
  const CreatePasswordTextFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: 'Password',color: AppColor.blackColor, size: SizeConfig.screenWidth!/20, fontWeight: FontWeight.bold,), // 18
        Container(
          margin: EdgeInsets.only(left: SizeConfig.screenWidth!/72, right: SizeConfig.screenWidth!/9,top: SizeConfig.screenHeight!/67.2), // 5, 40, 10 margin: EdgeInsets.only(left: 5, right: 40,top: 10),
          height: SizeConfig.screenHeight!/13.44, //50
          width: double.infinity,
          child: TextFormField(

            decoration: InputDecoration(
                hintText: '************',
                hintStyle: TextStyle(color: AppColor.pureGreyColor),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.pureGreyColor,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(SizeConfig.screenWidth!/9), //40

                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(SizeConfig.screenWidth!/9),
                  borderSide: BorderSide(
                    color: AppColor.pureGreyColor,
                    width: 3,
                  ),
                )
            ),
          ),
        ),
        SizedBox(
          height:  SizeConfig.screenHeight!/33.6, //20
        ),

        CustomText(text: 'Confirm Password',color: AppColor.blackColor, size: SizeConfig.screenWidth!/20, fontWeight: FontWeight.bold,), //18
        Container(
          margin: EdgeInsets.only(left: SizeConfig.screenWidth!/72, right: SizeConfig.screenWidth!/9,top: SizeConfig.screenHeight!/67.2), // 5, 40, 10 margin: EdgeInsets.only(left: 5, right: 40,top: 10),
          height: SizeConfig.screenHeight!/13.44, //50
          width: double.infinity,
          child: TextFormField(

            decoration: InputDecoration(
                hintText: '************',
                hintStyle: TextStyle(color: AppColor.pureGreyColor),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.pureGreyColor,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(SizeConfig.screenWidth!/9), //40

                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(SizeConfig.screenWidth!/9), //40
                  borderSide: BorderSide(
                    color: AppColor.pureGreyColor,
                    width: 3,
                  ),
                )
            ),
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight!/16.8,), //40

        CustomButton(text: 'Change Password', onpress: (){}),

      ],
    );
  }
}
