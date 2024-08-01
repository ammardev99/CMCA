import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FinishingEstimateState {
  TextEditingController? typeOfMaterial;
  TextEditingController? wallLength;
  TextEditingController? wallHeight;
  TextEditingController? result;

  RxBool isLoading = false.obs;
  RxBool showResult = false.obs;
  stateClear() {
    typeOfMaterial?.clear();
    wallLength?.clear();
    wallHeight?.clear();
    result?.clear();
    isLoading.value = false;
    showResult.value = false;
  }

  FinishingEstimateState() {
    ///Initialize variables
    typeOfMaterial = TextEditingController();
    wallLength = TextEditingController();
    wallHeight = TextEditingController();
  }
}
