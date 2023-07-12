import 'package:flutter/material.dart';
import 'package:flutter_web_app/utils/colors.dart';
import 'package:flutter_web_app/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      // for making responsive UI
      mobile: MobileContainer1(),
      desktop: DesktopContainer1(),
      //mobile:
    );
  }

  Widget MobileContainer1() {
    return Container(
      //Widget returning container
      //margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(
        children: [
          Container(
            height: h!/1.2, // giving responsive h and width
            width: w!/1.2,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(illustration1),
              fit: BoxFit.contain,
            )),
          ),
         
          Container(
            child: Column(
         //property for row and column
          children: [
            Text(
              'Track your \nExpenses to \nSave Money',
              style: TextStyle(
                fontSize: w! / 10,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Helps you to organize \nyour income and expenses',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 45,
              child: ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primary),
                    // getting bgcolor from colors.dart
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.arrow_drop_down),
                  label: Text('Try free Demo',
                 )),
              // we can put both text and icon in Elevated button.icon
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              '— Web, iOs and Android',
              style:
                  TextStyle(color: Colors.grey.shade400, fontSize: 16),
            )
          ],
            ),
          ),
        ]
      ),
    );
  }

  Widget DesktopContainer1() {
    return Container(
      //Widget returning container
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, //property for row and column
              children: [
                Text(
                  'Track your \nExpenses to \nSave Money',
                  style: TextStyle(
                    fontSize: w! / 20,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Helps you to organize your income and expenses',
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 20),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 45,
                      child: ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(AppColors.primary),
                            // getting bgcolor from colors.dart
                          ),
                          onPressed: () {},
                          icon: Icon(Icons.arrow_drop_down),
                          label: Text('Try free Demo')),
                      // we can put both text and icon in Elevated button.icon
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '— Web, iOs and Android',
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 20),
                    ),
                     SizedBox(
                      height: 20,
                    ),
                  ],
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            height: 530,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(illustration1),
              fit: BoxFit.contain,
            )),
          ))
        ],
      ),
    );
  }
}