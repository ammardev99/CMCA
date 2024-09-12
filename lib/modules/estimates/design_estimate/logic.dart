import 'package:cmca/models/list_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'state.dart';

class DesignEstimateLogic extends GetxController {
  final DesignEstimateState state = DesignEstimateState();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  get formKey => _formKey;

  Future<void> getresult() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    state.isLoading.value = true;
        state.showResult.value = false;

    await Future.delayed(const Duration(seconds: 1));
    double d = double.tryParse(state.typeBuilding!.text) ?? 0.0;
    // double d = double.tryParse(state.totalArea!.text) ?? 0.0;
    state.isLoading.value = false;
    state.showResult.value = true;
    // Calculate the result
    double result = d ;
    // Set the result in the rController
    state.result!.text = result.toString();
  }



  double getSqFt() {
    double length = double.tryParse(state.areaLength!.text) ?? 0;
    double width = double.tryParse(state.areaWidth!.text) ?? 0;
    return length * width;
  }

    double getCost() {
    return getSqFt()*getDesignCost(state.typeBuilding!.text);
  }
}
