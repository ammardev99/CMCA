import 'package:flutter/material.dart';

import '../config/config_io.dart';

Widget appAd() {
  return Row(
    children: [
      SizedBox(width: 48, height: 48, child: Image.asset(MyImages.logo)),
      const SizedBox(width: 12),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [headingText("CMCA By Saqib Faraz"), const Text("Free on PlayStore")],
      ),
    ],
  );
}
