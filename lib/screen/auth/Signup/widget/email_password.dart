import 'package:flutter/material.dart';

import '../../../../utils/app_color.dart';
import '../../../../widget/CustomButton.dart';
import '../../../../widget/customTextButton.dart';
import '../../../../widget/custom_text.dart';

class SignupEmailPasswor extends StatelessWidget {
  const SignupEmailPasswor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: 'Email or Mobile No',color: AppColor.blackColor, size: 18, fontWeight: FontWeight.bold,),
        Container(
          margin: EdgeInsets.only(left: 5, right: 40,top: 10),
          height: 50,
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
                  borderRadius: BorderRadius.circular(40),

                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(
                    color: AppColor.pureGreyColor,
                    width: 3,
                  ),
                )
            ),
          ),
        ),

        SizedBox(
          height: 20,
        ),

        CustomText(text: 'Password',color: AppColor.blackColor, size: 18, fontWeight: FontWeight.bold,),
        Container(
          margin: EdgeInsets.only(left: 5, right: 40,top: 10),
          height: 50,
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
                  borderRadius: BorderRadius.circular(40),

                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(
                    color: AppColor.pureGreyColor,
                    width: 3,
                  ),
                )
            ),
          ),
        ),

        SizedBox(
          height: 20,
        ),

        CustomText(text: 'Confirm Password',color: AppColor.blackColor, size: 18, fontWeight: FontWeight.bold,),
        Container(
          margin: EdgeInsets.only(left: 5, right: 40,top: 10),
          height: 50,
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
                  borderRadius: BorderRadius.circular(40),

                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(
                    color: AppColor.pureGreyColor,
                    width: 3,
                  ),
                )
            ),
          ),
        ),

        SizedBox(
          height: 20,
        ),

        CustomButton(text: 'Register', onpress: (){}),
        Center(
          child: Column(
            children: [




              InkWell(
                onTap: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup()));
                },

                child: RichText(text: TextSpan(
                    children: [
                      TextSpan(text: "Already Have An Account? ",style: TextStyle(color: AppColor.blackColor,fontSize: 18)),
                      TextSpan(text: "Login",style: TextStyle(color: AppColor.redColor,decoration:TextDecoration.underline,fontSize: 18),
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
