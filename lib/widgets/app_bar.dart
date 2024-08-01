import 'package:cmca/utils/color.dart';
import 'package:cmca/widgets/formatting.dart';
import 'package:flutter/material.dart';

AppBar customAppbar(String label) {
  return AppBar(
    leading: const BackButton(
      color: AppColors.white,
    ),
    backgroundColor: AppColors.primary,
    title: appHeading(label, AppColors.white),
    centerTitle: true,
  );
}
