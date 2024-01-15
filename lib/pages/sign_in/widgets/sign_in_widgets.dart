import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sheger_learning/commons/utils/app_colors.dart';
import 'package:sheger_learning/commons/widgets/app_shadows.dart';
import 'package:sheger_learning/commons/widgets/image_widget.dart';
import 'package:sheger_learning/commons/widgets/text_widget.dart';

AppBar buildAppBar(){
  return AppBar(
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1),
      child: Container(
       // color: Colors.red,
        height: 2,
      ),
      
    ),
    title: text16Normal(text: 'Login',color:AppColors.primaryText),
  );
}
Widget thirdPartyLogin(){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 80),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _loginButton(imagePath: "assets/images/google.png"),
        _loginButton(imagePath: "assets/images/apple.png"),
        _loginButton(imagePath: "assets/images/facebook.png"),
    ],),
  );
}
Widget _loginButton({String imagePath="assets/images/google.png",}){
  return GestureDetector(onTap: (){},child: Container(height: 40,width: 40,child: Image.asset(imagePath),),);
}
Widget appTextField(
    {String text="",
      String iconName="assets/images/user.png",
      String hintText="Type in your info",
      bool obscureText=false

    }){
  return Container(
    padding: EdgeInsets.only(left: 25,right: 25),
    child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      text14Normal(text: text),
        SizedBox(height: 5,),
        Container(
          width: 325,
          height: 50,
          //color: Colors.lightGreen,
          decoration: appBoxDecorationTextField(),
          child: Row(
            children: [
            //For Showing Icons
            Container(
                margin: EdgeInsets.only(left:17),
                child: appImage(imagePath: iconName)
            ),
            Container(
              width: 280,
              height: 50,
              child: TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    hintText:hintText,
                  border:const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent
                    )
                  ),
                  enabledBorder:const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent
                    )
                  ),
                  focusedBorder:const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent
                    )
                  ),
                  disabledBorder:const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent
                    )
                  ),

                ),
                onChanged: (value){
                },
                maxLines: 1,
                autocorrect: false,
                obscureText: obscureText,
              ),
            ),

          ],),
        ),
    ],),
  );
}