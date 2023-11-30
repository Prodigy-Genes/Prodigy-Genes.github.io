import 'package:flutter/material.dart';
import 'package:portfolio_site/screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio_site/constants.dart';
void main() {
  runApp(const MyPortfolio_Site());
}

// ignore: camel_case_types
class MyPortfolio_Site extends StatelessWidget {
  const MyPortfolio_Site({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // we are using dark theme 
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyLarge: const TextStyle(color: bodyTextColor),
              bodyMedium: const TextStyle(color: bodyTextColor),
            ),
      ),
      home: const HomeScreen(),
    );
  }
}

