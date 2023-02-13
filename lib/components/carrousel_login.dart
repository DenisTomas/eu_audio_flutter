import 'package:carousel_slider/carousel_slider.dart';
import 'package:em_audio/components/assets_images.dart';
import 'package:em_audio/components/colors.dart';
import 'package:flutter/material.dart';

class CarrouselLogin extends StatefulWidget {
  const CarrouselLogin({super.key});

  @override
  State<CarrouselLogin> createState() => _CarrouselLoginState();
}

class _CarrouselLoginState extends State<CarrouselLogin> {
  var imagesListText = [
    'Bem-Vindo(a) acesse cursos completos...',
    'Aproveite seu tempo',
    'Praticidade e eficiência',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        options: CarouselOptions(
          enlargeCenterPage: true,
          height: MediaQuery.of(context).size.height,
          viewportFraction: 1.0,
          autoPlay: true,
        ),
        items: [carrouselImg1, carrouselImg2, carrouselImg3].map((i) {
          return Builder(builder: (BuildContext context) {
            return Stack(
              children: <Widget>[
                Image.asset(
                  i,
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
                if (i == carrouselImg1)
                  Positioned(
                    bottom: MediaQuery.of(context).size.height / 2,
                    child: Text(
                      imagesListText[0],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                if (i == carrouselImg2)
                  Positioned(
                    bottom: MediaQuery.of(context).size.height / 2,
                    child: Text(
                      imagesListText[1],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                if (i == carrouselImg3)
                  Positioned(
                    bottom: MediaQuery.of(context).size.height / 2,
                    child: Text(
                      imagesListText[2],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic),
                    ),
                  )
              ],
            );
          });
        }).toList(),
      ),
    );
  }
}
