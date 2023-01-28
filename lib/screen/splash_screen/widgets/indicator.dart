import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/size_config.dart';

class Indicator extends StatelessWidget {
  const Indicator({Key? key,
    required this.currentIndex,
    required this.contentsLength,

  }) : super(key: key);
  final int currentIndex;
  final int contentsLength;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: SizeConfig.screenHeight!/33.6),  //20
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(contentsLength,
                (index) => buildDot(index, context)),
      ),
    );
  }
  Container buildDot(int index , BuildContext context){
    return Container(
      height: SizeConfig.screenHeight!/67.2,  //10
      width: currentIndex ==index ? SizeConfig.screenWidth!/18: SizeConfig.screenWidth!/36,   // 20 10
      margin: EdgeInsets.only(right: SizeConfig.screenWidth!/72),  //5
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth!/18),  //20
        color: currentIndex==index ?Theme.of(context).colorScheme.primary: Colors.grey,

      ),
    );
  }
}
