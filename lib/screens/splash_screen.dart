// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:jiitak/screens/landing_screen.dart';
import 'package:lottie/lottie.dart';

import '../constants/colors.dart';
import '../utils/navigator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      navigateAndRemoveUntil(const LandingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryColor,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'JIITAK',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: blackColor,
              ),
            ),
            Lottie.asset(
              'assets/animations/loader.json',
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
