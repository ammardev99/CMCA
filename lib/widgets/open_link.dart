import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../config/config_io.dart';

Widget menuOptionLink(
    BuildContext context, IconData icon, String txt, String url) {
  return Container(
    decoration: const BoxDecoration(
      border: Border(bottom: BorderSide(color: AppColors.secondary)),
    ),
    child: ListTile(
        hoverColor: AppColors.primary.withAlpha(77),
        splashColor: AppColors.primary.withAlpha(77),
        leading: Icon(icon),
        iconColor: AppColors.primary,
        title: headingText(txt, Colors.grey),
        trailing: Icon(
          Icons.chevron_right,
          color: AppColors.primary.withAlpha(77),
        ),
        onTap: () async {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text(
                  'Let\'s Go!',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.w600),
                ),
                content: const Text('You need to open this page.'),
                actions: [
                  TextButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            AppColors.primary.withAlpha(77))),
                    onPressed: () async {
                      // ignore: deprecated_member_use
                      if (await canLaunch(url)) {
                        // ignore: deprecated_member_use
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                      // ignore: use_build_context_synchronously
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Open',
                      style: TextStyle(
                          color: AppColors.primary.withAlpha(77),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              );
            },
          );
        }),
  );
}
