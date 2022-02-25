import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:momma_app/widget/Nav.dart';
import 'package:momma_app/widget/Walk_Through_PageView.dart';

class WalkThrough extends StatefulWidget {
  const WalkThrough({Key? key}) : super(key: key);

  @override
  _WalkThroughState createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {
  late PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Visibility(
                visible: _page == 2,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/LoginScreen');
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                onPageChanged: (int page) {
                  setState(() {
                    _page = page;
                  });
                },
                controller: _pageController,
                children: const [
                  WalkThroughPageView(
                    image: 'images/welcome.png',
                    titleText: 'Welcome!',
                    subText:
                        'Now were up in the big leagues \ngettingour turn at bat. The Brady Bunch \nthat\'s the way we  Brady Bunch..',
                  ),
                  WalkThroughPageView(
                    image: 'images/Add to cart.png',
                    titleText: 'Add to cart',
                    subText:
                        'Now were up in the big leagues \ngettingour turn at bat. The Brady Bunch \nthat\'s the way we  Brady Bunch..',
                  ),
                  WalkThroughPageView(
                    image: 'images/Enjoy Purchase!.png',
                    titleText: 'Enjoy Purchase!',
                    subText:
                        'Now were up in the big leagues \ngettingour turn at bat. The Brady Bunch \nthat\'s the way we  Brady Bunch..',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Nav(
                  page: _page == 0,
                  margin: 13.4,
                ),
                Nav(
                  page: _page == 1,
                  margin: 13.4,
                ),
                Nav(
                  page: _page == 2,
                ),
              ],
            ),
            const SizedBox(height: 120),
          ],
        ),
      ),
    );
  }
}
