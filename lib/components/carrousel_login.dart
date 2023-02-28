import 'package:carousel_slider/carousel_slider.dart';
import 'package:em_audio/components/assets_images.dart';
import 'package:em_audio/components/carrousel_text.dart';
import 'package:em_audio/components/colors.dart';
import 'package:flutter/material.dart';

class CarrouselLogin extends StatefulWidget {
  const CarrouselLogin({super.key});

  @override
  State<CarrouselLogin> createState() => _CarrouselLoginState();
}

class _CarrouselLoginState extends State<CarrouselLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CarouselSlider(
        options: CarouselOptions(
          pauseAutoPlayOnTouch: true,
          enlargeCenterPage: true,
          height: MediaQuery.of(context).size.height,
          viewportFraction: 1.0,
          autoPlay: true,
        ),
        items: [carrouselImg1, carrouselImg2, carrouselImg3].map((i) {
          return Builder(builder: (BuildContext context) {
            return Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Image.asset(
                  i,
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
                if (i == carrouselImg1)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Positioned(
                      width: MediaQuery.of(context).size.width,
                      bottom: MediaQuery.of(context).size.height / 2,
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          carrouselText1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                  ),
                if (i == carrouselImg2)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Positioned(
                      width: MediaQuery.of(context).size.width,
                      bottom: MediaQuery.of(context).size.height / 2,
                      child: const Text(
                        carrouselText2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                if (i == carrouselImg3)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Positioned(
                      width: MediaQuery.of(context).size.width,
                      bottom: MediaQuery.of(context).size.height / 2,
                      child: const Text(
                        carrouselText3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal),
                      ),
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
