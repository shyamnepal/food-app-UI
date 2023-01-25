import 'package:flutter/material.dart';

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
          size: 20,),

        SizedBox(
          height: 10,
        ),

        Row(
          children: [
            Container(
              height: 60,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: AppColor.greyColor),

              ),
              child: Center(child: CustomText(text: '+(1)',size: 20,color: AppColor.pureGreyColor,)),
            ),

            Container(
              margin: EdgeInsets.only(left: 10),
              height: 60,
              width: 200,
              child: TextFormField(

                decoration: InputDecoration(

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColor.pureGreyColor
                      ),
                      borderRadius: BorderRadius.circular(20),

                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: AppColor.pureGreyColor
                      ),
                    )
                ),
              ),
            )
          ],
        ),

        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
