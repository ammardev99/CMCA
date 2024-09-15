import 'package:cmca/utils/color.dart';
import 'package:cmca/widgets/formatting.dart';
import 'package:flutter/material.dart';

AppBar customAppbar(String label) {
  return AppBar(
    leading: const BackButton(
      color: AppColors.white,
    ),
    backgroundColor: AppColors.primary,
    title: headingText(label, AppColors.white),
    centerTitle: true,
  );
}

// for v2
// AppBar customInfoApp(String label, BuildContext context) {
//   return AppBar(
//     leading: const BackButton(
//       color: AppColors.white,
//     ),
//     backgroundColor: AppColors.primary,
//     title: headingText(label, AppColors.white),
//     centerTitle: true,
//     actions: [
// // info popup icon
//       IconButton(
//         onPressed: () => showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title:titleText(label, AppColors.primary),
//         content: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             headingText("heading", AppColors.primary),
//             infoText("This is a simple dialog. This is a simple dialog. This is a simple dialog."),
//           ],
//         ),
//         actions: <Widget>[
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: const Text("Close"),
//           ),
//         ],
//       );
//     },
//   ),
//         icon: const Icon(Icons.info_outline, color: AppColors.grey),
//       )
//     ],
//   );
// }
