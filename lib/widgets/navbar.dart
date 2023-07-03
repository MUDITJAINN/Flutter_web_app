import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget { // see class name
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout( //screen type layout is use for make diffrent ui for diffrent screens
      mobile: , 
      desktop: ,
      //tablet: ,
    );
  }
} 