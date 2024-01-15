import 'package:flutter/cupertino.dart';

Widget appImage({String imagePath="assets/images/user.png",double width=16,double height=16}){
  return Image.asset(imagePath,width: width,height: height,);
}