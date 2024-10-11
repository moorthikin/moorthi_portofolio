import 'package:flutter/material.dart';

class AutoAdjustHeader extends StatelessWidget {
  const AutoAdjustHeader(
      {super.key,
      required this.image,
      required this.text,
      required this.color,
      required this.colors});
  final String image;
  final String text;
  final Color color;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.50;
    double width = MediaQuery.of(context).size.width * 0.25;
    return Stack(children: [
      //   Positioned(child: Image.asset(image)),
      Positioned(
          left: width,
          bottom: height,
          child: CircleAvatar(
            backgroundColor: color,
            radius: 70.0,
          )),
      Positioned(
        left: width,
        bottom: height,
        child: Text(
          text,
          style: TextStyle(color: color),
        ),
      )
    ]);
  }
}
