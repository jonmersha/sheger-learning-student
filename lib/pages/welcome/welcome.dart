import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sheger_learning/pages/welcome/widgets.dart';

import '../notifier/welcome_notifier.dart';

final indexProvider=StateProvider<int>((ref)=>0);


class WelCome extends ConsumerWidget {
   WelCome({super.key});
  final PageController _controller=PageController();

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final index=ref.watch(indexDotProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Stack(children: [
              //showing the wellcome pages
              PageView(
                onPageChanged: (value){
                  ref.read(indexDotProvider.notifier).changeIndex(value);
              },
                controller: _controller,
                children: [
                  //First Page
              appOnboardingPage(
                  context:context,
                  _controller,
                  image: "assets/images/reading.jpeg",
                  title: "First See Learning",
                  subTitle: "the App is built to let you learn online via you phone",index: 1),

              appOnboardingPage(
                  context:context,
                  _controller,
                  image: "assets/images/reading2.jpeg",
                  title: "Connect With Everyone",
                  subTitle: "Always Keep in touch with tutor and friends. Let's get connected",
                  index: 2),
              appOnboardingPage(
                context:context,
                  _controller,
                  image: "assets/images/books.jpeg",
                  title: "Always Fascinated Learning",
                  subTitle: "Anywhere, anytime. the time is at your discretion, so study whatever",
                  index: 3,buttonText:"Get started"),
              ],),
              //for Showing dots indicators
               Positioned(
                 bottom: 60,
                 left: 150,
                 child:DotsIndicator(
                   position: index,
                   dotsCount: 3,
                   mainAxisAlignment: MainAxisAlignment.center,
                   decorator: DotsDecorator(
                     size: const Size.square(9.0),
                     activeSize: const Size(18.0,8.0),
                     activeShape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(5))
                   ),
                 ),
               )
            ],),
          ),
        ),
      ),
    );
  }


}
