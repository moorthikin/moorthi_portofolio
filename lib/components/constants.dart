import 'package:flutter/material.dart';

height(double height, BuildContext context) {
  MediaQuery.of(context).size.height * height;
}

width(double width, BuildContext context) {
  MediaQuery.of(context).size.width * width;
}

Widget addBoldText(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  );
}

Widget addHeightBox(double height) {
  return SizedBox(
    height: height,
  );
}

Color primary = Colors.yellow;
Color secondary = Colors.black;
Color additional = Colors.white;
