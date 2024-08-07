import 'package:cmca/models/estimate_model.dart';
import 'package:cmca/widgets/formatting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// GridCard
Widget estimateOptionCard(Estimate objOption) {
  return InkWell(
    onTap: () {
      Get.toNamed(
        objOption.route,
      );
    },
    splashColor: objOption.color.withOpacity(0.3),
    borderRadius: BorderRadius.circular(15),
    child: Container(
      padding: const EdgeInsets.all(10),
      width: 160,
      height: 180,
      decoration: BoxDecoration(
          color: objOption.color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
          border:
              Border.all(width: 1, color: objOption.color.withOpacity(0.5))),
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

// List card
