import 'package:em_audio/components/assets_images.dart';
import 'package:em_audio/components/carrousel_login.dart';
import 'package:em_audio/screens/enter_screen.dart';
import 'package:em_audio/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:em_audio/components/colors.dart';
import '../components/rounded_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  get children => null;

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
            const CarrouselLogin(),
            Row(
              children: <Widget>[
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          welcomeScreenImg,
                          height: MediaQuery.of(context).size.width,
                          color: kPrimaryColor,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 180),
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            children: [
                              RoundedButton(
                                text: 'CADASTRAR',
                                color: kPrimaryColor,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen(),
                                      ));
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RoundedButton(
                                  text: 'ENTRAR',
                                  color: kPrimaryLightColor,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const EnterScreen(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
