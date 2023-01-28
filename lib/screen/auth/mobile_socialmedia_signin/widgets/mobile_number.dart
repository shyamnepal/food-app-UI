import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/size_config.dart';

import '../../../../utils/app_color.dart';
import '../../../../widget/custom_text.dart';

class MobileNumber extends StatelessWidget {
  const MobileNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: 'Mobile No',color: AppColor.blackColor,
          fontWeight: FontWeight.bold,
          size: SizeConfig.screenWidth!/20, //20
        ),

        SizedBox(height: SizeConfig.screenHeight!/67.2,), //10

        Row(
          children: [
            Container(
              height: SizeConfig.screenHeight!/11.2, //60
              width: SizeConfig.screenWidth!/3.6, //100
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(SizeConfig.screenWidth!/7.2),  //50
                border: Border.all(color: AppColor.greyColor),

              ),
              child: Center(child: CustomText(text: '+(1)',size: SizeConfig.screenWidth!/18,color: AppColor.pureGreyColor,)), //20
            ),

            Container(
              margin: EdgeInsets.only(left: 10),
              height: SizeConfig.screenHeight!/11.2, //6060,
              width:  SizeConfig.screenWidth!/1.8, //200

              child: TextFormField(

                decoration: InputDecoration(
                  hintText: '9854321234',
                    hintStyle: TextStyle(color: AppColor.pureGreyColor),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColor.pureGreyColor
                      ),
                      borderRadius: BorderRadius.circular(SizeConfig.screenWidth!/18), //20

                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(SizeConfig.screenWidth!/18),  //20
                      borderSide: BorderSide(
                          color: AppColor.pureGreyColor
                      ),
                    )
                ),
              ),
            )
          ],
        ),

        SizedBox(height: SizeConfig.screenHeight!/22.4,), //30
      ],
    );
  }
}
