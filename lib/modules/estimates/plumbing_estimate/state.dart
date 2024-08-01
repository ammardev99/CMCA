import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlumbingEstimateState {
  TextEditingController? typeBuilding;
  TextEditingController? noWashroom;
  TextEditingController? noKitchen;
  TextEditingController? result;
  RxBool isLoading = false.obs;
  RxBool showResult = false.obs;
  stateClear() {
    typeBuilding?.clear();
    noWashroom?.clear();
    noKitchen?.clear();
    result?.clear();


    isLoading.value = false;
    showResult.value = false;
  }

  PlumbingEstimateState() {
    ///Initialize variables
    typeBuilding = TextEditingController();
    noWashroom = TextEditingController();
    noKitchen = TextEditingController();
    result = TextEditingController();
  }
}
