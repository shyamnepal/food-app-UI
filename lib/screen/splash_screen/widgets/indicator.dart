import 'package:flutter/material.dart';

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
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(contentsLength,
                (index) => buildDot(index, context)),
      ),
    );
  }
  Container buildDot(int index , BuildContext context){
    return Container(
      height: 10,
      width: currentIndex ==index ? 20: 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex==index ?Theme.of(context).colorScheme.primary: Colors.grey,

      ),
    );
  }
}
