
import 'package:flutter/material.dart';
import 'package:sheger_learning/commons/utils/app_colors.dart';
import 'package:sheger_learning/commons/widgets/app_shadows.dart';
import 'package:sheger_learning/pages/sign_in/sign_in.dart';

import '../../commons/widgets/text_widget.dart';

Widget appOnboardingPage(
    PageController controller,
    {
  String image="assets/images/reading.jpeg",
  String title="Please Add Your Title",
  String subTitle="Please Add Your Sub Title",
  int index=0, String buttonText="Next",
      required BuildContext context

}) {
  return Column(
    children: [
      Image.asset(image,fit: BoxFit.fitWidth,height: 345,width: 345,),
      const SizedBox(height: 20,),
      text24Normal(text: title),
      const SizedBox(height: 15,),
      text16Normal(text: subTitle),
      const SizedBox(height: 145,),
      nextButton(index: index,controller,buttonText:buttonText,context:context),
    ],
  );
}
Widget nextButton(
PageController controller,
    {
      String buttonText='Next',
      Color color=AppColors.primaryElement,
     int  index=1, required BuildContext context
      }){
  return GestureDetector(
    onTap: (){
     // controller.
      //print('Page index$index');
      if(index<3){
        controller.animateToPage(
            index,
            duration: const Duration(microseconds: 300), curve: Curves.bounceIn);
      }else{

        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (BuildContext context) => const SignIn()));
        //
        Navigator.pushNamed(context, "/singin");
      }
    },
    child: Container(
      width: 325,
      height: 50,
      decoration: appBoxShadow(),
      child: Center(
          child: text16Normal(text: buttonText,color: AppColors.primaryFourElementText)),),
  );
}