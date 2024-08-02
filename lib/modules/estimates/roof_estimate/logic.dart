import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'state.dart';

class RoofEstimateLogic extends GetxController {
  final RoofEstimateState state = RoofEstimateState();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  get formKey => _formKey;

  Future<void> getresult() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    state.isLoading.value = true;
    await Future.delayed(const Duration(seconds: 1));
    double t = double.tryParse(state.typeOfMaterial!.text) ?? 0.0;
    double l = double.tryParse(state.length!.text) ?? 0.0;
    double w = double.tryParse(state.width!.text) ?? 0.0;
    state.isLoading.value = false;
    state.showResult.value = true;
    // Calculate the result
    double result = (t * l * w) * 2500;
    // Set the result in the rController
    state.result!.text = result.toString();
  }
}