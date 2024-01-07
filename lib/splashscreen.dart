// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_site/screens/home/home_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  late BuildContext _context;

  @override
  void initState() {
    super.initState();
    // Store the context
    _context = context;
    // You can add any initialization logic here
    _navigateToHome();
  }

  void _navigateToHome() async {
    try {
      // Simulate a delay for demonstration purposes
      await Future.delayed(const Duration(seconds: 5));

      // Navigate to the home screen using the stored context
      Navigator.of(_context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    } catch (e) {
      // Handle navigation error
      print("Error navigating to home screen: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 28, 63, 92),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your GIF here using the FlutterSvg widget
            Image.asset(
              'assets/images/vid.gif', 
              height: 500,
              width: 500,
            ),
            const SizedBox(height: 16),
            // Add a progress indicator below the GIF
            const CircularProgressIndicator(
              color: Color.fromARGB(255, 255, 208, 0),
            ),
          ],
        ),
      ),
    );
  }
}
