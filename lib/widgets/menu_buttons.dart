import 'package:cmca/utils/color.dart';
import 'package:cmca/widgets/formatting.dart';
import 'package:cmca/widgets/show_status.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget menuOptionPage(IconData icon, String txt, [page]) {
  return Container(
    decoration: const BoxDecoration(
      border: Border(bottom: BorderSide(color: AppColors.primary)),
    ),
    child: ListTile(
      hoverColor: AppColors.primary.withOpacity(0.3),
      splashColor: AppColors.primary.withOpacity(0.3),
      leading: Icon(icon),
      iconColor: AppColors.primary,
      title: headingText(txt, AppColors.primary),
      onTap: () {
        if (page == null) {
          toastShowText('Not Available');
        } else {
          Get.to(page);
        }
      },
    ),
  );
}
