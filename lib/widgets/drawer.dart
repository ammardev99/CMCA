import 'package:cmca/config/routes/routes_name.dart';
import 'package:cmca/widgets/drawer_profile.dart';
import 'package:cmca/config/utils/formatting.dart';
import 'package:cmca/widgets/lottie_animation.dart';
import 'package:cmca/widgets/menu_buttons.dart';
import 'package:flutter/material.dart';

Drawer customDrawer(BuildContext context) {
  return Drawer(
      child: Column(
    children: [
      Expanded(
        child: ListView(children: [
          drawerProfile('assets/png/app_icon.png', "CMCA",
              'Civil Material Cost Analysis'),
          menuOptionPage(Icons.info_outline, 'About Us', RouteName.aboutUs),
          menuLinkOption(Icons.devices_other, 'Other Apps',
              'https://www.behance.net/AmmarDev99', context),
          menuLinkOption(Icons.message_outlined, 'Contat Admin',
              'https://wa.me/+923019286653', context),
          menuLinkOption(Icons.message_outlined, 'Contat App Developer',
              'https://wa.me/+923424264494', context),
          // menuLinkOption(Icons.facebook, 'Follow Us',
          //     'https://www.facebook.com/', context),
          // menuOptionPage(Icons.star_border,'Rate App',),
          // menuOptionPage(Icons.sync,'Update App',),
          menuOptionPage(Icons.logout, 'Log out', RouteName.authlogin),
          sizeBox(60),
          lottieAnimation('assets/animations/masonry.json', 300, true),
        ]),
      ),
      const Divider(
        height: 1,
      ),
      sizeBox(5),
      infoText("Version 1.0.5"),
      sizeBox(10),
    ],
  ));
}
