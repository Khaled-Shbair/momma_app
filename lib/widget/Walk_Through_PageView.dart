import 'package:flutter/material.dart';

class WalkThroughPageView extends StatelessWidget {
  const WalkThroughPageView({
    required this.titleText,
    required this.image,
    required this.subText,
    Key? key,
  }) : super(key: key);

  final String titleText;
  final String image;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 34,
        end: 33,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: double.infinity,
            //  fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: 19),
          Text(
            titleText,
            maxLines: 1,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Color(0xFF23203F),
            ),
          ),
          const SizedBox(height: 20.8),
          Text(
            subText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              height: 1.5,
              fontSize: 17,
              fontWeight: FontWeight.w300,
              color: Color(0xFF716F87),
            ),
          ),
        ],
      ),
    );
  }
}
