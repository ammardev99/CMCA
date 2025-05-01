import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget lottieAnimation(path, double size, [bool? repeat]) {
  return SizedBox(
      height: size,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Lottie.asset(path, fit: BoxFit.contain, repeat: repeat ?? false),
      ));
}
