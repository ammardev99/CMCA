import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../config/config_io.dart';

AppBar customAppBar(String label) {
  return AppBar(
    leading: const BackButton(
      color: AppColors.white,
    ),
    backgroundColor: AppColors.primary,
    title: headingText(label, AppColors.white),
    centerTitle: true,
  );
}

AppBar customInfoAppBar(String label, BuildContext context) {
  return AppBar(
    leading: const BackButton(
      color: AppColors.white,
    ),
    backgroundColor: AppColors.primary,
    title: headingText("$label Estimate", AppColors.white),
    centerTitle: true,
    actions: [
// info popup icon
      IconButton(
        onPressed: () => showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              // title:
              backgroundColor: AppColors.white,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: SizedBox(
                      height: 100,
                      child: Lottie.asset(
                          moduleInfo[getModuleIndex(label)].animation,
                          repeat: false),
                    ),
                  ),
                  headingText(moduleInfo[getModuleIndex(label)].title,
                      AppColors.primary),
                  infoText(moduleInfo[getModuleIndex(label)].description),
                ],
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Close"),
                ),
              ],
            );
          },
        ),
        icon: const Icon(Icons.info_outline, color: AppColors.grey),
      )
    ],
  );
}
