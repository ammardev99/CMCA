import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'state.dart';

class CalculateLogic extends GetxController {
  final CalculateState state = CalculateState();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  get formKey => _formKey;
  var showResult = false.obs;

  getresult() {
    double d = double.tryParse(state.d.text) ?? 0.0;
    double l = double.tryParse(state.l.text) ?? 0.0;
    double w = double.tryParse(state.w.text) ?? 0.0;

    // Calculate the result
    double result = d * l * w;

    // Set the result in the rController
    state.r.text = result.toString();
  }
}
