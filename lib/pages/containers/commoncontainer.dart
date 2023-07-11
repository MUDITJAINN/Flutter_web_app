import 'package:flutter/material.dart';
import 'package:flutter_web_app/utils/colors.dart';
import 'package:flutter_web_app/utils/constants.dart';

Widget CommonContainer(String s1, s2, s3, image, bool leftimage) // 3 text 1 image 1 ternary
{
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w!/10,vertical:30),
    child: Row(
      children: [
        leftimage // using ternary operator 
        ? Expanded(child: Container(
         height:530 ,
         decoration: BoxDecoration(
          image: DecorationImage(image: 
          AssetImage(image), // image used here
          fit: BoxFit.contain  
          )
         ),
        ),) 
        : Container(),


        Expanded(child: 
        Column(
        crossAxisAlignment:  leftimage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(s1.toUpperCase(),
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 16,
          ),
          ),
          SizedBox(height: 10,),
          Text(s2,
          textAlign:leftimage? TextAlign.right : TextAlign.left,
          style: TextStyle(
            color: Colors.black,
            fontSize: w!/20,
            height: 1.1,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 10,),
          Text(s3,
          textAlign:leftimage? TextAlign.right : TextAlign.left,
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 16,
          ),
          ),
          SizedBox(
            height: 20,
          ),
           TextButton.icon(
            onPressed: (){},
            icon: Icon(Icons.arrow_forward_ios,
            size: 20,
            color:AppColors.primary,
            ),
            label: Text(
              'Learn more',
            style: TextStyle(color: AppColors.primary)),  
           ),
        ],
        )
        ),

        !leftimage // using ternary operator 
        ? Expanded(child: Container(
         height:530 ,
         decoration: BoxDecoration(
          image: DecorationImage(image: 
          AssetImage(image), // image used here
          fit: BoxFit.contain  
          )
         ),
        ),) 
        : Container(),

      ],
    ),
  );
}
