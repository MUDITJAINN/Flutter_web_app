import 'package:flutter/material.dart';
import 'package:flutter_web_app/pages/containers/container2.dart';
import 'package:flutter_web_app/pages/containers/container5.dart';
import 'package:flutter_web_app/utils/constants.dart';
import 'package:flutter_web_app/widgets/navbar.dart';
import 'package:flutter_web_app/pages/containers/container1.dart';
import 'package:flutter_web_app/pages/containers/container4.dart';
import 'package:flutter_web_app/pages/containers/container3.dart';


class Home extends StatefulWidget {
  //class name starts with capital
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width; // defining contants in widget build
    h = MediaQuery.of(context).size.height;
    return Scaffold(
        // widget returning Scaffold
        body: SingleChildScrollView(
      child: Container(
          child: Column(
        // calling widgets and pages
        children: [NavBar(),Container1(),Container2(),Container3(),Container4(),Container5()],
      )),
    ));
  }
}
