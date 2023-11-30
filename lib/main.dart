import 'package:flutter/material.dart';
import 'package:portfolio_site/Pages/homepage.dart';

void main() {
  runApp(const MyPortfolio_Site());
}

// ignore: camel_case_types
class MyPortfolio_Site extends StatelessWidget {
  const MyPortfolio_Site({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

