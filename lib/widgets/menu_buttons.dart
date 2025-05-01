import 'package:cmca/widgets/show_status.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../config/config_io.dart';

Widget menuOptionPage(IconData icon, String txt, [String? page]) {
  return ListTile(
    hoverColor: AppColors.primary.withAlpha(77),
    splashColor: AppColors.primary.withAlpha(77),
    leading: Icon(icon),
    iconColor: AppColors.primary,
    title: headingText(txt, AppColors.primary),
    onTap: () {
      if (page == null) {
        toastShowText('Page Not Available');
      } else {
        Get.toNamed(page);
      }
    },
  );
}

Widget menuLinkOption(IconData icon, String txt, String link, BuildContext context) {
  return ListTile(
    hoverColor: AppColors.primary.withAlpha(77),
    splashColor: AppColors.primary.withAlpha(77),
    leading: Icon(icon, color: AppColors.primary),
    title: headingText(txt, AppColors.primary),
    onTap: () async {
      final Uri uri = Uri.parse(link);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        toastShowText("Could not launch");
      }
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    },
  );
}