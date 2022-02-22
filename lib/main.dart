import 'package:flutter/material.dart';
import 'package:momma_app/screen/Welcome_Screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/WelcomeScreen',
      routes:{
    '/WelcomeScreen':(context)=>const WelcomeScreen();
    },
    );
  }
}
