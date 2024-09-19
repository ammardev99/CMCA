import 'package:cmca/routes/routes_name.dart';
import 'package:cmca/widgets/drawer_profile.dart';
import 'package:cmca/widgets/formatting.dart';
import 'package:cmca/widgets/menu_buttons.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Drawer customDrawer(BuildContext context) {
  return Drawer(
      child: ListView(children: [
    Column(
      children: [
        drawerProfile('assets/png/app_icon.png', "CMCA", 'Civil Material Cost Analysis'),
        menuOptionPage(Icons.info_outline,'About Us',RouteName.aboutUs),
        menuLinkOption(Icons.message_outlined,'Contat Us','https://wa.me/+923019286653', context),
        menuLinkOption(Icons.facebook,'Follow Us','https://www.facebook.com/', context),
        menuLinkOption(Icons.devices_other,'Other Apps','https://play.google.com/store/apps/developer?id=samz+creation&hl=en&gl=US', context),
        // menuOptionPage(Icons.star_border,'Rate App',),
        // menuOptionPage(Icons.sync,'Update App',),
        menuOptionPage(Icons.logout, 'Log out', RouteName.login),
        sizeBox(100),
        SizedBox(
          width: 180,
          child: Lottie.asset('assets/animations/drawer.json',
              fit: BoxFit.fill,
              ),),
        const Divider(),
        infoText("version 1.0.3"),
        sizeBox(20),
      ],
    ),
  ]));
}
