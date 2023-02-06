import 'package:flutter/material.dart';
import 'package:em_audio/colors.dart';

import '../components/rounded_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/logo-vertical-180x134.png',
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: kPrimaryColor,
                ),
                Text('Texto Boas vindas'),
                RoundedButton(
                  text: 'CADASTRAR',
                  color: kPrimaryColor,
                  onPressed: () {},
                ),
                RoundedButton(
                  text: 'ENTRAR',
                  color: kPrimaryLightColor,
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
