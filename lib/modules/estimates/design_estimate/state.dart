import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesignEstimateState {
  TextEditingController? typeBuilding;
  TextEditingController? totalArea;
  TextEditingController? designType;
  TextEditingController? coverArea;
  TextEditingController? result;

  // buildingType;
  // Architecture
  // Structural
  RxBool isLoading = false.obs;
  RxBool showResult = false.obs;
  stateClear() {
    typeBuilding?.clear();
    totalArea?.clear();
    coverArea?.clear();
    designType?.clear();
    result?.clear();
    isLoading.value = false;
    showResult.value = false;
  }

  DesignEstimateState() {
    ///Initialize variables
    typeBuilding = TextEditingController();
    totalArea = TextEditingController();
    coverArea = TextEditingController();
    designType = TextEditingController();
  }
}
