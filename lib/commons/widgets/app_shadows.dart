
import 'package:flutter/material.dart';
import 'package:sheger_learning/commons/utils/app_colors.dart';

BoxDecoration appBoxShadow({Color color=AppColors.primaryElement}){
  return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
          color: Colors.blue.withOpacity(0.5),
      spreadRadius: 2,
      blurRadius: 2,
      offset: const Offset(0,1,)
      )
    ]

  );
}

BoxDecoration appBoxDecorationTextField(
    {
      Color color=AppColors.primaryBackground,
      double radius=15,
      Color borderColor=AppColors.primaryFourElementText
    }){
  return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(color:AppColors.primaryFourElementText),



  );
}