import 'package:cmca/utils/color.dart';
import 'package:cmca/widgets/formatting.dart';
import 'package:cmca/widgets/menu_buttons.dart';
import 'package:flutter/material.dart';

Drawer customDrawer() {
  return Drawer(
      child: ListView(children: [
    Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        height: 130,
        decoration: const BoxDecoration(color: AppColors.primary),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/png/app_icon.png'),
            ),
            Expanded(
                child: ListTile(
              title: appHeading("CMCA", AppColors.white),
              subtitle: appInfoText('Civil Material Cost Analysis', AppColors.white),
            ))
          ],
        )),
    Container(
      width: double.infinity,
      height: 5,
      decoration: const BoxDecoration(color: AppColors.secondary),
    ),
    menuOptionPage(Icons.info_outline,'About Us',),
    menuOptionPage(Icons.star_border,'Rate App',),
    menuOptionPage(Icons.devices_other,'Other Apps',),
    menuOptionPage(Icons.feedback_outlined,'Feedback',),
    menuOptionPage(Icons.message_outlined,'Contat Us',),
    // menuOptionPage(Icons.add,'txt',),
  ]));
}
