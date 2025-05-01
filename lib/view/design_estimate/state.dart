import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesignEstimateState {
  RxBool isLoading = false.obs;
  RxBool showResult = false.obs;
  Rxn<String> typeBuilding = Rxn<String>();

  TextEditingController? areaLength;
  TextEditingController? areaWidth;
  TextEditingController? areaSqFt;
  TextEditingController? result;

  stateClear() {
    typeBuilding.value = 'Select Design Type'; // Reset to the default "0" value
    areaLength?.clear();
    areaWidth?.clear();
    areaSqFt?.clear();
    result?.clear();
    isLoading.value = false;
    showResult.value = false;
  }

  DesignEstimateState() {
    areaLength = TextEditingController();
    areaWidth = TextEditingController();
    areaSqFt = TextEditingController();
  }
}
