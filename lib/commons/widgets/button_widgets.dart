import 'package:flutter/cupertino.dart';
import 'package:sheger_learning/commons/utils/app_colors.dart';
import 'package:sheger_learning/commons/widgets/text_widget.dart';

import 'app_shadows.dart';

Widget appButton({
  String text="",
  Color color=AppColors.primaryElement,
  Color textColor =AppColors.primaryElementText,
  String routePage="",required BuildContext context}){
  return GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, '/$routePage');
    },
    child: Container(
      width: 325,
      height: 50,
      alignment: Alignment.center,
      decoration: appBoxShadow(color: color),
      child: text14Normal(text: text,color: textColor),
    ),
  );
}

Widget signUpButton({
  String text="",
  Color color=AppColors.primaryElement,
  Color textColor =AppColors.primaryElementText,
  String routePage="",
  void Function()? func

}){
  return GestureDetector(
    child: Container(
      width: 325,
      height: 50,
      alignment: Alignment.center,
      decoration: appBoxShadow(color: color),
      child: text16Normal(text: text,color: textColor),
    ),
    onTap: func
  );
}