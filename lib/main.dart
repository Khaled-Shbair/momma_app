import 'package:flutter/material.dart';
import 'package:momma_app/screen/Login_Screen.dart';
import 'package:momma_app/screen/Welcome_Screen.dart';
import 'package:momma_app/screen/walk_through.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/WelcomeScreen',
      routes: {
        '/WelcomeScreen': (context) => const WelcomeScreen(),
        '/WalkThrough': (context) => const WalkThrough(),
        '/LoginScreen': (context) => const LoginScreen(),
      },
    );
  }
}
