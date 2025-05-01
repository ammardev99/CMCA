import 'package:flutter/material.dart';

import '../config/config_io.dart';

Widget drawerProfile(String icon, String title, String subTitle) {
  return Container(
      decoration: const BoxDecoration(color: AppColors.primary),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          sizeBox(40),
          Row(
            children: [
              sizeBox(15),
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(icon),
              ),
              Expanded(
                  child: ListTile(
                title: headingText(title, AppColors.white),
                subtitle: infoText(subTitle, AppColors.grey),
              )),
            ],
          ),
          sizeBox(40),
          const Divider(
            color: AppColors.secondary,
            thickness: 5,
            height: 0,
          ),
        ],
      ));
}
