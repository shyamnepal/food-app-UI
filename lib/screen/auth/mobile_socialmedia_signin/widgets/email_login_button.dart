import 'package:flutter/material.dart';

import '../../../../widget/customTextButton.dart';
import '../../../../widget/custom_text.dart';
import '../component/continue_with_email.dart';

class EmailLoginButton extends StatelessWidget {
  const EmailLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: CustomText(text: 'Your Esisting Account',size: 20,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center
            ,),
        ),
        SizedBox(
          height: 20,
        ),
        ContinueWithEmail(
            text: 'Continue with Email',
            onpress: (){}),
        Center(
          child: CustomText(
            text: 'Or',
            size: 20,
          ),

        ),

        Center(
            child: CustomTextButton(text: 'SKIP LOGIN', tap: (){},)
        )

      ],
    );
  }
}
