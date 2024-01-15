
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sheger_learning/pages/sign_in/sign_in.dart';
import 'package:sheger_learning/pages/welcome/welcome.dart';

void main() {

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/":(context)=>WelCome(),
        "/singin":(context)=>const SignIn()
      },
      //home:  WelCome(),
    );
  }
}

final appCount = StateProvider<int>((ref) {
  return 0;
});

