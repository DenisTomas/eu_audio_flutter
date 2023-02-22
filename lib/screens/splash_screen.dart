import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:em_audio/components/assets_images.dart';
import 'package:em_audio/components/colors.dart';
import 'package:em_audio/screens/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(backgroundImg3), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            AnimatedSplashScreen(
              splash: Column(
                children: [
                  Image.asset(welcomeScreenImg),
                ],
              ),
              splashTransition: SplashTransition.scaleTransition,
              backgroundColor: kFieldsAndButtonColor,
              nextScreen: const Home(),
              splashIconSize: 300,
            ),
          ],
        ),
      ),
    );
  }
}
