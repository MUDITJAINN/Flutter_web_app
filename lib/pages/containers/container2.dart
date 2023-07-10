import 'package:flutter/material.dart';
import 'package:flutter_web_app/utils/colors.dart';
import 'package:flutter_web_app/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      // for making responsive UI
      mobile: MobileContainer2(),
      desktop: DesktopContainer2(),
      //mobile:
    );
  }

  Widget MobileContainer2() {
    return Container(
    
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [

          Container(
            padding: EdgeInsets.only(left: 20,right: 20,bottom: 0,top: 20),
            child: Container(
            height: 195,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage(dashboard),
                fit: BoxFit.contain)),
          ),
      ),

      Container(
        color: Colors.white,
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            companylogo(fb),
            companylogo(google),
            companylogo(cocacola),
            companylogo(samsung),
          ],
        ),
      )
        ],
      ),
    );
  }

  Widget DesktopContainer2() {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  right: -20,
                  top: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                     decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(vector1),fit: BoxFit.contain)),
                  ),),
                    Positioned(
                  left: -20,
                  bottom: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                     decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(vector1),fit: BoxFit.contain)),
                  ),),
                Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    height: 712,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(dashboard),
                         
                          )),
                  ),
                ),
              ],
            ),
          ),

          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companylogo(fb),
                companylogo(google),
                companylogo(cocacola),
                companylogo(samsung),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget companylogo(String image) { //taking image as an argument in widget
    return Container(
      width: 160,
      height: 36,
      margin: EdgeInsets.only(bottom:20),
      decoration: BoxDecoration(
        image: DecorationImage(image: 
        AssetImage(image),
        fit: BoxFit.contain),
      )
    );
  }
}