import 'package:em_audio/components/colors.dart';
import 'package:em_audio/screens/splash_screen.dart';
import 'package:flutter/material.dart';

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
