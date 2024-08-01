import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'state.dart';

class ElectricalEstimateLogic extends GetxController {
  final ElectricalEstimateState state = ElectricalEstimateState();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  get formKey => _formKey;

  Future<void> getresult() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    state.isLoading.value = true;
    await Future.delayed(const Duration(seconds: 1));
    double d = double.tryParse(state.buildingType!.text) ?? 0.0;
    double l = double.tryParse(state.noRooms!.text) ?? 0.0;
    // double l = double.tryParse(state.noWashrooms!.text) ?? 0.0;
    double w = double.tryParse(state.noKitchens!.text) ?? 0.0;
    state.isLoading.value = false;
    state.showResult.value = true;
    // Calculate the result
    double result = d * l * w;
    // Set the result in the rController
    state.result!.text = result.toString();
  }
}
