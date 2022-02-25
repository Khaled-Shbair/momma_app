import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 26,
          end: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign In',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF23203F),
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'Login to continue your account,',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Color(0xFF716F87),
              ),
            ),
            const SizedBox(height: 37),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              cursorColor: Color(0xFF23203F),
              cursorWidth: 1,
              cursorHeight: 30,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Color(0xFF23203F),
              ),
              decoration: InputDecoration(
                label: Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF9391A4),
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD0D0D0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 29),
            const TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: false,
              cursorColor: Color(0xFF23203F),
              cursorWidth: 1,
              cursorHeight: 30,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Color(0xFF23203F),
              ),
              decoration: InputDecoration(
                label: Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF9391A4),
                  ),
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Color(0xFFD0D0D0),
                  size: 30,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD0D0D0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 28),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF6A90F2),
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              // margin: const EdgeInsetsDirectional.only(
              //   start: 50,
              //   end: 46,
              // ),
              color: const Color(0xFF4267B2),
              shadowColor: Colors.red,
              child: ListTile(
                onTap: () {},
                contentPadding: const EdgeInsetsDirectional.only(
                  start: 50,
                  end: 46,
                  top: 3,
                  bottom: 3,
                ),
                leading: const Icon(
                  Icons.facebook,
                  size: 30,
                  color: Colors.white,
                ),
                title: const Text(
                  'Login with facebook',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            const SizedBox(height: 29),
            Center(
              child: RichText(
                text: const TextSpan(
                  text: 'Don’t have an account? ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF9391A4),
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign up',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF23203F),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
