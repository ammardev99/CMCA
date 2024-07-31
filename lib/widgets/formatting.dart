


import 'package:cmca/utils/color.dart';
import 'package:flutter/material.dart';

Widget sizeBox(double w, [double? h]) {
  return SizedBox(
    width: w,
    height: h ?? w,
  );
}


Widget appHeading(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: color ?? AppColors.black,
    ),
  );
}

Widget appInfoText(String text, [Color? color]) {
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
