
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(21),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/image.png'),
            ),
            const SizedBox(height: 24.4),
            const Text(
              'John Deo',
              style: TextStyle(
                fontSize: 19.66,
                fontWeight: FontWeight.bold,
                color: Color(0xFF444657),
              ),
            ),
            const SizedBox(height: 7.5),
            const Text(
              'johndeo@yourmail.com',
              style: TextStyle(
                fontSize: 17.2,
                fontWeight: FontWeight.w500,
                color: Color(0xFF87879D),
              ),
            ),
            const SizedBox(height: 33.8),
            const Divider(
              indent: 2,
              endIndent: 2,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'About',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF474559),
                ),
              ),
            ),
            const SizedBox(height: 12.2),
            RichText(
              text: const TextSpan(
                text:
                    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical professor',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF66647B),
                ),
                children: [
                  TextSpan(
                    text: ' Read More',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              indent: 2,
              endIndent: 2,
            ),
            Image.asset('images/Categories2.png'),
            Image.asset('images/Categories2.png'),
          ],
        ),
      ),
    );
  }
}
//  Divider(
//           ),
