import 'package:em_audio/components/colors.dart';
import 'package:em_audio/screens/initial_screen.dart';
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
      home: const InitialScreen(),
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
