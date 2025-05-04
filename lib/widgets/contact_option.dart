import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../config/config_io.dart';

Future contactOpup(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.white,
        title: const Text(
          'Let\'s Go!',
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
        ),
        content: const Text('Contact the founder to get access.'),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(AppColors.primary),
                ),
                onPressed: () async {
                  // ignore: deprecated_member_use
                  if (await canLaunch('https://wa.me/message/A4MULE5OOCMXF1')) {
                    // ignore: deprecated_member_use
                    await launch('https://wa.me/message/A4MULE5OOCMXF1');
                  } else {
                    throw 'Could not launch';
                  }
                  // ignore: use_build_context_synchronously
                  Navigator.pop(context);
                },
                child: const Text(
                  'Developer',
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              TextButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(AppColors.secondary),
                ),
                onPressed: () async {
                  // ignore: deprecated_member_use
                  if (await canLaunch('https://wa.me/message/GR6WORCERRI3I1')) {
                    // ignore: deprecated_member_use
                    await launch('https://wa.me/message/GR6WORCERRI3I1');
                  } else {
                    throw 'Could not launch';
                  }
                  // ignore: use_build_context_synchronously
                  Navigator.pop(context);
                },
                child: const Text(
                  'Founder',
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}
