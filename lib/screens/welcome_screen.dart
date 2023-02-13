import 'package:em_audio/components/assets_images.dart';
import 'package:em_audio/components/carrousel_login.dart';
import 'package:flutter/material.dart';
import 'package:em_audio/components/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../components/rounded_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  get children => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CarrouselLogin(),
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      welcomeScreenImg,
                      height: MediaQuery.of(context).size.height * 0.5,
                      color: kPrimaryColor,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          top: 8.0, bottom: 32.0, left: 16, right: 16),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 150),
                          child: RoundedButton(
                            text: 'CADASTRAR',
                            color: kPrimaryColor,
                            onPressed: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RoundedButton(
                            text: 'ENTRAR',
                            color: kPrimaryLightColor,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
