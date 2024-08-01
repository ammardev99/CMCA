import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoofEstimateState {
  TextEditingController? typeOfMaterial;
  TextEditingController? length;
  TextEditingController? width;
  TextEditingController? result;
  RxBool isLoading = false.obs;
  RxBool showResult = false.obs;
  stateClear() {
    typeOfMaterial?.clear();
    length?.clear();
    width?.clear();
    result?.clear();
    isLoading.value = false;
    showResult.value = false;
  }

  RoofEstimateState() {
    ///Initialize variables
    typeOfMaterial = TextEditingController();
    length = TextEditingController();
    width = TextEditingController();
    result = TextEditingController();
  }
}
