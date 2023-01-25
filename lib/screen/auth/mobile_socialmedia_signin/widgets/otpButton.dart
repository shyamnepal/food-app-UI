import 'package:flutter/material.dart';

import '../../../../widget/CustomButton.dart';

class OtpButton extends StatelessWidget {
  const OtpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(text: 'Send OTP', onpress: (){

        }),

        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
