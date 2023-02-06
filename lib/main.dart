import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:em_audio/colors.dart';
import 'package:flutter/material.dart';
import 'package:em_audio/screens/home.dart';

void main() {
  runApp(const EmAudio());
}

class EmAudio extends StatelessWidget {
  const EmAudio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Em Áudio',
      home: const SplashScreen(),
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: kPrimaryColor,
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset('assets/logo.png'),
        ],
      ),
      backgroundColor: Colors.black12,
      nextScreen: const Home(),
      splashIconSize: 300,
    );
  }
}
