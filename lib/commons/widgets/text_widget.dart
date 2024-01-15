import 'package:flutter/material.dart';
import 'package:sheger_learning/commons/utils/app_colors.dart';

Widget text24Normal({String text = "",Color color=AppColors.primaryText}){
  return  Text(
    text,
    textAlign: TextAlign.center,
    style:  TextStyle(
        color: color,
        fontSize: 24,
        fontWeight: FontWeight.normal
    ),
  );
}
Widget text16Normal({String text = "",Color color=AppColors.primarySecondaryElementText}){
  return  Container(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style:  TextStyle(
          color: color,
          fontSize: 16,
          fontWeight: FontWeight.normal
      ),
    ),
  );
}
Widget text14Normal({String text = "",Color color=AppColors.primarySecondaryElementText}){
  return  Container(
    //padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Text(
      text,
     // textAlign: TextAlign.center,
      style:  TextStyle(
          color: color,
          fontSize: 14,
          fontWeight: FontWeight.normal
      ),
    ),
  );
}
Widget textUnderline({String text = "",Color color=AppColors.primarySecondaryElementText}){
  return  GestureDetector(
    onTap: (){},
    child:  Container(
      width: 325,
      child: Text(
        text,
        style:  TextStyle(
            color: color,
            fontSize: 12,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.underline
        ),
      ),
    ),
  );
}