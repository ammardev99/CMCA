import 'package:flutter/material.dart';

import '../config/config_io.dart';

Widget appAd() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisSize: MainAxisSize.min,
    children: [
      Image.asset(MyImages.logo, height: 80),
      gapBox(6),
      Center(child: headingText("CMCA - Civil Material Cost Analysis")),
    ],
  );
}
