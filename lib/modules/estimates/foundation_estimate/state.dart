import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoundationEstimateState {
  TextEditingController? type;
  TextEditingController? typeOfMaterial;
  TextEditingController? wallLength;
  TextEditingController? wallThickness;
  TextEditingController? result;
  RxBool isLoading = false.obs;
  RxBool showResult = false.obs;
  stateClear() {
    type?.clear();
    typeOfMaterial?.clear();
    wallLength?.clear();
    wallThickness?.clear();
    result?.clear();
    isLoading.value = false;
    showResult.value = false;
  }

  FoundationEstimateState() {
    ///Initialize variables
    type = TextEditingController();
    typeOfMaterial = TextEditingController();
    wallLength = TextEditingController();
    wallThickness = TextEditingController();
  }
}
