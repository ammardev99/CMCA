import 'package:cmca/utils/color.dart';
import 'package:cmca/widgets/formatting.dart';
import 'package:flutter/material.dart';

// GridCard
Widget estimateCard(String label, String icon) {
  return InkWell(
    onTap: () {},
    splashColor: AppColors.secondary.withOpacity(0.3),
    borderRadius: BorderRadius.circular(15),
    child: Container(
      padding: const EdgeInsets.all(10),
      width: 160,
      height: 180,
      decoration: BoxDecoration(
          color: AppColors.secondary.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: AppColors.secondary.withOpacity(0.5))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 80,
            child: Image.asset(icon),
          ),
          appHeading(label)
        ],
      ),
    ),
  );
}

// List card
