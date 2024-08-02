


import 'package:cmca/utils/color.dart';
import 'package:flutter/material.dart';

Widget sizeBox(double w, [double? h]) {
  return SizedBox(
    width: w,
    height: h ?? w,
  );
}

Widget titleText(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: color ?? AppColors.black,
    ),
    textAlign: TextAlign.center,
  );
}

Widget headingText(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: color ?? AppColors.black,
    ),
  );
}

Widget infoText(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: color ?? Colors.black87,
    ),
    textAlign: TextAlign.justify,
  );
}
