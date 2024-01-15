import 'package:flutter/material.dart';
import 'package:sheger_learning/commons/utils/app_colors.dart';

class AppTheme{
  static ThemeData appThemeData=ThemeData(
    brightness: Brightness.light,
        appBarTheme: AppBarTheme(
      elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: AppColors.primaryText
          )

  )
  );
}