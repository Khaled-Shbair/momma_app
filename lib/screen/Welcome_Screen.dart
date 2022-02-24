import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/WalkThrough');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            const SizedBox(height: 30),
            Image.asset(
              'images/Mask Group 1.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Container(
              margin:
                  const EdgeInsets.only(top: 117.7, right: 41.4, left: 65.4),
              child: Image.asset(
                'images/Group 3.png',
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 173),
              alignment: Alignment.topCenter,
              child: const Text(
                'FASHIONS',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
