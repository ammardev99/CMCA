
// ignore_for_file: use_build_context_synchronously

import 'package:cmca/models/list_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'state.dart';

class DesignEstimateLogic extends GetxController {
  final DesignEstimateState state = DesignEstimateState();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  get formKey => _formKey;
  getDate() {
    DateTime now = DateTime.now();
    String formattedDateTime =
        DateFormat('EEEE d MMMM yyyy \'at\' h:mma').format(now);
    return formattedDateTime;
  }

  Future<void> getresult() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    state.isLoading.value = true;
    state.showResult.value = false;

    await Future.delayed(const Duration(seconds: 1));
    // double d = double.tryParse(state.typeBuilding!.text) ?? 0.0;
    // double d = double.tryParse(state.totalArea!.text) ?? 0.0;
    state.isLoading.value = false;
    state.showResult.value = true;
    // Calculate the result
    // double result = d ;
    // Set the result in the rController
    // state.result!.text = result.toString();
  }

  double getSqFt() {
    double length = double.tryParse(state.areaLength!.text) ?? 0;
    double width = double.tryParse(state.areaWidth!.text) ?? 0;
    return length * width;
  }

  double getCost() {
  return getSqFt()*getDesignCost(state.typeBuilding.value.toString());
  }


// ScreenshotController screenshotController = ScreenshotController();

// Future<void> saveToGallery(BuildContext context) async {

//   // Request storage permissions
//   if (await Permission.storage.request().isGranted) {

//     try {
//       // Wait for the widget to fully render before capturing the screenshot
//       await Future.delayed(const Duration(seconds: 1));

//       // Capture the screenshot
//       final image = await screenshotController.capture();

//       if (image == null) {
//         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//           content: Text('Screenshot capture failed!'),
//         ));
//         return;
//       }


//       // Save the image to the gallery
//       final result = await ImageGallerySaver.saveImage(image,
//           name: 'capture_${DateTime.now().millisecondsSinceEpoch}');


//       if (result['isSuccess']) {
//         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//           content: Text('Image saved to gallery!'),
//         ));
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//           content: Text('Image not saved!'),
//         ));
//       }
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//         content: Text('Image could not be saved!'),
//       ));
//     }
//   } else {
//     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//       content: Text('Permission denied!'),
//     ));
//   }
// }
  }
