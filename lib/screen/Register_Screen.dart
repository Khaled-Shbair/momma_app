import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController _textEditingControllerEmail;
  late TextEditingController _textEditingControllerPassWord;
  late TapGestureRecognizer _tapGestureRecognizer;
  String? _errorEmailText;
  String? _errorPassWordText;

  void _navigatorToRegister() {
    Navigator.pushNamed(context, '/LoginScreen');
  }

  @override
  void initState() {
    _textEditingControllerEmail = TextEditingController();
    _textEditingControllerPassWord = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = _navigatorToRegister;
    super.initState();
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    _textEditingControllerEmail.dispose();
    _textEditingControllerPassWord.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 26,
          end: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign Up',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color(0xFF23203F),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Create an account',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 18,
                color: Color(0xFF9391A4),
              ),
            ),
            const SizedBox(height: 48),
            const TextField(
              keyboardType: TextInputType.name,
              cursorColor: Color(0xFF23203F),
              cursorWidth: 1,
              cursorHeight: 30,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Color(0xFF23203F),
              ),
              decoration: InputDecoration(
                //   errorText: _errorEmailText,
                label: Text(
                  'First name',
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
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            const TextField(
              keyboardType: TextInputType.name,
              cursorColor: Color(0xFF23203F),
              cursorWidth: 1,
              cursorHeight: 30,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Color(0xFF23203F),
              ),
              decoration: InputDecoration(
                //   errorText: _errorEmailText,
                label: Text(
                  'Last name',
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
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            const TextField(
              keyboardType: TextInputType.phone,
              cursorColor: Color(0xFF23203F),
              cursorWidth: 1,
              cursorHeight: 30,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Color(0xFF23203F),
              ),
              decoration: InputDecoration(
                //   errorText: _errorEmailText,
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
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            const TextField(
              keyboardType: TextInputType.phone,
              cursorColor: Color(0xFF23203F),
              cursorWidth: 1,
              cursorHeight: 30,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Color(0xFF23203F),
              ),
              decoration: InputDecoration(
                hintText: 'Phone',
                hintStyle: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF9391A4),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD0D0D0),
                  ),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
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
                  'PassWord',
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
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 28),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _performLogin();
                });
              },
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
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF9391A4),
                  ),
                  children: [
                    TextSpan(
                      recognizer: _tapGestureRecognizer,
                      text: 'Login',
                      style: const TextStyle(
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

  void _performLogin() {
    if (_checkData()) {
      _login();
    }
  }

  bool _checkData() {
    if (_textEditingControllerPassWord.text.isNotEmpty &&
        _textEditingControllerEmail.text.isNotEmpty) {
      controlErrorText();
      return true;
    } else {
      controlErrorText();
    }
    return false;
  }

  void controlErrorText() {
    _errorEmailText =
        _textEditingControllerEmail.text.isEmpty ? _errorEmailText : null;
    _errorPassWordText =
        _textEditingControllerPassWord.text.isEmpty ? _errorPassWordText : null;
  }

  void _login() {
    ScaffoldMessenger.of(context)
        .showSnackBar(
          const SnackBar(
            content: Text('Login is successful'),
            behavior: SnackBarBehavior.floating,
            duration: Duration(seconds: 2),
          ),
        )
        .closed
        .then((value) =>
            Navigator.pushReplacementNamed(context, '/CategoriesScreen'));
  }
}
