import 'package:flutter/material.dart';

class TextFeildOTP extends StatelessWidget {
  const TextFeildOTP({Key? key,
    required this.first,
    required this.last,
    required this.height,

  }) : super(key: key);

  final bool first;
  final bool last;
  final double height;

  @override
  Widget build(BuildContext context) {
    var code='';
      return Container(
        margin: EdgeInsets.only(left: 5),
        height: 60,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
        ),
        child: AspectRatio(
          aspectRatio: 3,
          child: TextField(
            // controller: _OtpController,
            autofocus: true,
            onChanged: (value) {
              code += value;

              print(code);
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.length == 0 && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            showCursor: false,
            readOnly: false,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              counter: Offstage(),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.black12),
                  borderRadius: BorderRadius.circular(70)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Color(0xff301896)),
                  borderRadius: BorderRadius.circular(70)),
            ),
          ),
        ),
      );

  }
}
