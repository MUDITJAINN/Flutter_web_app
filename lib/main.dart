import 'package:flutter/material.dart';
import 'package:flutter_web_app/pages/home.dart';
import 'package:flutter_web_app/utils/colors.dart';

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
      title: 'Xpense',
      theme: ThemeData(
        fontFamily: 'HindiSiliguri',
        brightness: Brightness.light,
        primaryColor: AppColors.primary // util color is used here class.variable
       
      ),
       home: Home(),
    );
  }
}
