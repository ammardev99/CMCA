import 'package:cmca/modules/auth/login/view.dart';
import 'package:cmca/widgets/drawer_profile.dart';
import 'package:cmca/widgets/formatting.dart';
import 'package:cmca/widgets/menu_buttons.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Drawer customDrawer() {
  return Drawer(
      child: ListView(children: [
    Column(
      children: [
        drawerProfile('assets/png/app_icon.png', "CMCA", 'Civil Material Cost Analysis'),
        menuOptionPage(Icons.info_outline,'About Us',),
        menuOptionPage(Icons.star_border,'Rate App',),
        // menuOptionPage(Icons.sync,'Update App',),
        menuOptionPage(Icons.devices_other,'Other Apps',),
        menuOptionPage(Icons.message_outlined,'Contat Us',),
        menuOptionPage(Icons.facebook,'Facebook',),
        menuOptionPage(Icons.logout, 'Log out', LoginPage()),
        sizeBox(60),
        SizedBox(
          width: 180,
          child: Lottie.asset('assets/animation.json',
              fit: BoxFit.fill,
              ),
        ),
        const Divider(),
        infoText("version 1.0.3"),
        sizeBox(20),
      ],
    ),
  ]));
}
