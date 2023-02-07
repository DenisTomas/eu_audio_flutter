import 'package:carousel_slider/carousel_slider.dart';
import 'package:em_audio/components/colors.dart';
import 'package:flutter/material.dart';

class CarrouselLogin extends StatefulWidget {
  const CarrouselLogin({super.key});

  @override
  State<CarrouselLogin> createState() => _CarrouselLoginState();
}

class _CarrouselLoginState extends State<CarrouselLogin> {
  List images = [
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngmart.com%2Fpt%2Fimage%2F274703&psig=AOvVaw1KN6di2H9RB0Fgribnpj_7&ust=1675873010563000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMD9-8_ng_0CFQAAAAAdAAAAABAE',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvcv0WZMiyhXlG0zLbu6LBJo5veMyNhHFUSOoIxSZvIHzX7xY6VaazQjGxGOj5FtzdqCk&usqp=CAU',
    'https://pngimg.com/uploads/student/student_PNG35.png',
    'https://ouch-cdn2.icons8.com/7DP-l69rylAk3O-c93Nbfj2650_1R5wZXWIXe0xuNnM/rs:fit:256:269/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvODQ4/L2UxMWRiMzJkLTg0/ODctNDExOS05OWY0/LTE2ZWJmYWUzMTU4/Mi5zdmc.png',
    'https://cdni.iconscout.com/illustration/premium/thumb/student-learning-from-online-video-2769750-2302768.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              autoPlayCurve: Curves.easeIn,
              autoPlay: true,
              enlargeCenterPage: true),
          items: images.map((i) {
            return Builder(builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(i),
                    fit: BoxFit.fill,
                  ),
                ),
              );
            });
          }).toList(),
        ),
      ),
    );
  }
}
