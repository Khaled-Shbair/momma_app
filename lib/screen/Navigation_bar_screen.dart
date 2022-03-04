import 'package:flutter/material.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('images/image.png'),
          ),
          SizedBox(height: 24.4),
          Text(
            'John Deo',
            style: TextStyle(
              fontSize: 19.66,
              fontWeight: FontWeight.bold,
              color: Color(0xFF444657),
            ),
          ),
          SizedBox(height: 7.5),
          Text(
            'johndeo@yourmail.com',
            style: TextStyle(
              fontSize: 17.2,
              fontWeight: FontWeight.w500,
              color: Color(0xFF87879D),
            ),
          ),
          SizedBox(height: 33.8),
          Card(
            child: ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 19.66,
                  color: Color(0xFF87879D),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text(
                'My Profile',
                style: TextStyle(
                  fontSize: 19.66,
                  color: Color(0xFF87879D),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart_outlined),
              title: Text(
                'Shop',
                style: TextStyle(
                  fontSize: 19.66,
                  color: Color(0xFF87879D),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.event_available_outlined),
              title: Text(
                'Events',
                style: TextStyle(
                  fontSize: 19.66,
                  color: Color(0xFF87879D),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.language),
              title: Text(
                'Terms & Conditions',
                style: TextStyle(
                  fontSize: 19.66,
                  color: Color(0xFF87879D),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.lock),
              title: Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 19.66,
                  color: Color(0xFF87879D),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 19.66,
                  color: Color(0xFF87879D),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
