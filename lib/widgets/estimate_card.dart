import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/config_io.dart';

// GridCard
Widget estimateOptionCard(ModuleOption objOption) {
  return InkWell(
    onTap: () {
      Get.toNamed(
        objOption.route,
      );
    },
    splashColor: objOption.color.withAlpha(77),
    borderRadius: BorderRadius.circular(15),
    child: Container(
      padding: const EdgeInsets.all(10),
      width: 160,
      height: 180,
      decoration: BoxDecoration(
          color: objOption.color.withAlpha(26),
          borderRadius: BorderRadius.circular(10),
          border:
              Border.all(width: 1, color: objOption.color.withAlpha(128))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 80,
            child: Image.asset(objOption.icon),
          ),
          headingText(objOption.title)
        ],
      ),
    ),
  );
}
