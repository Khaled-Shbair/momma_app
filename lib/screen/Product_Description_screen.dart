import 'dart:ui';

import 'package:flutter/material.dart';

class ProductDescriptionScreen extends StatefulWidget {
  const ProductDescriptionScreen({Key? key}) : super(key: key);

  @override
  State<ProductDescriptionScreen> createState() =>
      _ProductDescriptionScreenState();
}

class _ProductDescriptionScreenState extends State<ProductDescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Product Details',
          style: TextStyle(
            color: Color(0xFF474559),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
