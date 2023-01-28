import 'package:flutter/material.dart';
import 'package:food_app_ui/screen/auth/otp/otp_screen.dart';
import 'package:food_app_ui/utils/size_config.dart';

import '../../../../widget/CustomButton.dart';

class OtpButton extends StatelessWidget {
  const OtpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(text: 'Send OTP', onpress: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));

        }),

        SizedBox(height: SizeConfig.screenHeight!/67.2,), //10
      ],
    );
  }
}
