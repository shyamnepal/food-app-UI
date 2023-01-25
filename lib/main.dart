import 'package:flutter/material.dart';
import 'package:food_app_ui/screen/splash_screen/onboarding.dart';
import 'package:food_app_ui/utils/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppColor.redColor,
        )
      ),
      home: const Onboarding(),
    );
  }
}
