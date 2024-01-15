import 'package:flutter/material.dart';
import 'package:sheger_learning/commons/utils/app_colors.dart';
import 'package:sheger_learning/commons/widgets/text_widget.dart';

AppBar buildAppBar({String title=""}){
  return AppBar(
    //backgroundColor: Colors.black,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(0.1),
      child: Container(
        color: Colors.grey.withOpacity(0.5),
        height: 2,
      ),

    ),
    title: text16Normal(text: title,color:AppColors.primaryText),
  );
}