import 'package:em_audio/colors.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color color, textColor;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
          ),
        ),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            width: 2.0,
            color: color,
          ),
          backgroundColor: color,
        ),
      ),
    );
  }
}
