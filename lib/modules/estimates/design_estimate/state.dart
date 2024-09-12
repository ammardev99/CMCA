import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesignEstimateState {
  TextEditingController? typeBuilding;
  TextEditingController? areaLength;
  TextEditingController? areaWidth;
  TextEditingController? areaSqFt;
  TextEditingController? result;

  // buildingType;
  // Architecture
  // Structural
  RxBool isLoading = false.obs;
  RxBool showResult = false.obs;
  stateClear() {
    typeBuilding?.clear();
    areaLength?.clear();
    areaWidth?.clear();
    areaSqFt?.clear();
    result?.clear();
    isLoading.value = false;
    showResult.value = false;
  }

  DesignEstimateState() {
    ///Initialize variables
    typeBuilding = TextEditingController();
    areaLength = TextEditingController();
    areaWidth = TextEditingController();
    areaSqFt = TextEditingController();
  }
}
