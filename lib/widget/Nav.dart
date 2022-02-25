import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  const Nav({
    this.margin = 0,
    required this.page,
    Key? key,
  }) : super(key: key);

  final double margin;
  final bool page;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: margin),
      height: 4,
      width: 17.8,
      decoration: BoxDecoration(
        color: page ? const Color(0xFF6A90F2) : const Color(0xFFDDDDDD),
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
