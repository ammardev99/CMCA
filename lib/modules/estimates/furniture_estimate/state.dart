import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FurnitureEstimateState {
  TextEditingController? typeBuilding;
  TextEditingController? noRoom;
  TextEditingController? result;
  RxBool isLoading = false.obs;
  RxBool showResult = false.obs;
  stateClear() {
    typeBuilding?.clear();
    noRoom?.clear();
    result?.clear();
    isLoading.value = false;
    showResult.value = false;
  }

  FurnitureEstimateState() {
    ///Initialize variables
    typeBuilding = TextEditingController();
    noRoom = TextEditingController();
  }
}
