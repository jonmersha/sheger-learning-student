import 'package:flutter/material.dart';
import 'package:sheger_learning/commons/utils/app_colors.dart';
import 'package:sheger_learning/commons/widgets/button_widgets.dart';
import 'package:sheger_learning/commons/widgets/text_widget.dart';
import 'package:sheger_learning/pages/sign_in/widgets/sign_in_widgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //top login buttons
          thirdPartyLogin(),
          //more login options message
          const SizedBox(height: 40,),
          text14Normal(text: "or use your email account to login"),
          const SizedBox(height: 20,),
          //eamil Text Box
          appTextField(
              text: "Eamil",
              iconName:"assets/images/user.png",
              hintText: "Inter your email address"),
          const SizedBox(height: 50,),
          //Password Text Box
          appTextField(
              text: "Password",
              iconName:"assets/images/pass.png",
              obscureText: true,
              hintText: "Inter Your Password"),
          const SizedBox(height: 20,),
          textUnderline(text: "Forget Password?"),
          const SizedBox(height: 50,),
          //Login Button
          appButton(context: context,text: "Login",color: AppColors.primaryElement),
          //signup Button
          const SizedBox(height: 50,),
          appButton(
              context: context,
              text: "SignUp",
              color: AppColors.primaryBackground,
              textColor: AppColors.primaryText
          ),
        ],

      ),
    );
  }
}
