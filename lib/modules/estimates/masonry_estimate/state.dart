import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class MasonryEstimateState {
  TextEditingController? typeOfMaterial;
  TextEditingController? wallLength;
  TextEditingController? wallHeight;
  TextEditingController? wallThickness;
  TextEditingController? result;
  RxBool isLoading = false.obs;
  RxBool showResult = false.obs;
  stateClear() {
    typeOfMaterial?.clear();
    wallLength?.clear();
    wallHeight?.clear();
    wallThickness?.clear();
    result?.clear();
    isLoading.value = false;
    showResult.value = false;
  }

  MasonryEstimateState() {
    ///Initialize variables
    typeOfMaterial = TextEditingController();
    wallLength = TextEditingController();
    wallHeight = TextEditingController();
    wallThickness = TextEditingController();
  }
}
