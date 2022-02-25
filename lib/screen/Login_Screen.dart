import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _textEditingControllerEmail;
  late TextEditingController _textEditingControllerPassWord;
  late TapGestureRecognizer _tapGestureRecognizer;
  String? _errorEmailText;
  String? _errorPassWordText;

  void _navigatorToRegister() {
    Navigator.pushNamed(context, '/RegisterScreen');
  }

  @override
  void initState() {
    // TODO: implement initState
    _textEditingControllerEmail = TextEditingController();
    _textEditingControllerPassWord = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer();
    _tapGestureRecognizer.onTap = _navigatorToRegister;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tapGestureRecognizer.dispose();
    _textEditingControllerEmail.dispose();
    _textEditingControllerPassWord.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
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
              TextField(
                keyboardType: TextInputType.emailAddress,
                cursorColor: const Color(0xFF23203F),
                cursorWidth: 1,
                cursorHeight: 30,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF23203F),
                ),
                decoration: InputDecoration(
                  errorText: _errorEmailText,
                  label: const Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF9391A4),
                    ),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFD0D0D0),
                    ),
                  ),
                  errorBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 29),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: false,
                cursorColor: const Color(0xFF23203F),
                cursorWidth: 1,
                cursorHeight: 30,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF23203F),
                ),
                decoration: InputDecoration(
                  errorText: _errorPassWordText,
                  label: const Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF9391A4),
                    ),
                  ),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Color(0xFFD0D0D0),
                    size: 30,
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFD0D0D0),
                    ),
                  ),
                  errorBorder: const UnderlineInputBorder(
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
                  text: TextSpan(
                    recognizer: _tapGestureRecognizer,
                    text: 'Don’t have an account? ',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF9391A4),
                    ),
                    children: const [
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
