import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:em_audio/components/assets_images.dart';
import 'package:em_audio/components/colors.dart';
import 'package:em_audio/screens/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              gradient: LinearGradient(
                  colors: [(Colors.black), (Colors.black87)],
                  begin: Alignment.center,
                  end: Alignment.center),
            ),
            child: AnimatedSplashScreen(
              splash: Column(
                children: [
                  Image.asset(splashScreenImg),
                ],
              ),
              splashTransition: SplashTransition.scaleTransition,
              backgroundColor: Colors.black12,
              nextScreen: const Home(),
              splashIconSize: 300,
            ),
          ),
        ],
      ),
    );
  }
}
