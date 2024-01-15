import 'package:flutter/material.dart';
import 'package:sheger_learning/commons/utils/app_colors.dart';
import 'package:sheger_learning/commons/widgets/app_bar.dart';
import 'package:sheger_learning/commons/widgets/button_widgets.dart';
import 'package:sheger_learning/commons/widgets/text_widget.dart';
import 'package:sheger_learning/pages/sign_in/widgets/sign_in_widgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Sign Up"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //top login buttons
          //  thirdPartyLogin(),
            //more login options message
            const SizedBox(height: 40,),
            text16Normal(text: "Enter your details below & free Sign Up"),
            const SizedBox(height: 20,),
            //User Name
            appTextField(
                text: "user Name",
                iconName:"assets/images/user.png",
                hintText: "Inter your user name"),
            const SizedBox(height: 20,),
            //eamil Text Box
            appTextField(
                text: "Eamil",
                iconName:"assets/images/user.png",
                hintText: "Inter your email address"),
            const SizedBox(height: 20,),
            //Password Text Box
            appTextField(
                text: "Password",
                iconName:"assets/images/pass.png",
                obscureText: true,
                hintText: "Inter Your Password"),
            const SizedBox(height: 20,),
            //Password Text Box confirm
            appTextField(
                text: "Confirm Password",
                iconName:"assets/images/pass.png",
                obscureText: true,
                hintText: "Confirm your password"),
            SizedBox(height: 20,),
            text16Normal(text: "By creating an account you have to agree with our therm & conditions"),
            const SizedBox(height: 50,),
            //signup Button
            const SizedBox(height: 50,),
            signUpButton(
              //  context: context,
                func: (){
                 Navigator.pushNamed(context, '/singin');
                  },
                text: "Create your account",
                routePage: "SignUp",
                color: AppColors.primaryElement,
                textColor: AppColors.primaryElementText
            ),
          ],

        ),
      ),
    );
  }
  void registration(BuildContext context,String routePage){
    Navigator.pushNamed(context, '/$routePage');
    //print('Hello Functions');
  }
}

void regst(int xc){
  print('Registrations of Users');

}
