import 'package:flutter/material.dart';
import 'package:momma_app/screen/Categories_screen.dart';
import 'package:momma_app/screen/Login_Screen.dart';
import 'package:momma_app/screen/Navigation_bar_screen.dart';
import 'package:momma_app/screen/Product_Description_screen.dart';
import 'package:momma_app/screen/Profile_screen.dart';
import 'package:momma_app/screen/Register_Screen.dart';
import 'package:momma_app/screen/Welcome_Screen.dart';
import 'package:momma_app/screen/walk_through.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/ProductDescriptionScreen',
      routes: {
        '/WelcomeScreen': (context) => const WelcomeScreen(),
        '/WalkThrough': (context) => const WalkThrough(),
        '/LoginScreen': (context) => const LoginScreen(),
        '/RegisterScreen': (context) => const RegisterScreen(),
        // '/CategoriesScreen': (context) => const CategoriesScreen(),
        '/NavigationBarScreen': (context) => const NavigationBarScreen(),
        '/ProfileScreen': (context) => const ProfileScreen(),
        '/ProductDescriptionScreen': (context) => ProductDescriptionScreen(),
      },
    );
  }
}
