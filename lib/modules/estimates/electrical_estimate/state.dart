import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ElectricalEstimateState {
  TextEditingController? buildingType;
  TextEditingController? noRooms;
  TextEditingController? noWashrooms;
  TextEditingController? noKitchens;
  TextEditingController? result;

  RxBool isLoading = false.obs;
  RxBool showResult = false.obs;
  stateClear() {
    buildingType?.clear();
    noRooms?.clear();
    noWashrooms?.clear();
    noKitchens?.clear();
    result?.clear();
    isLoading.value = false;
    showResult.value = false;
  }

  ElectricalEstimateState() {
    ///Initialize variables
    buildingType = TextEditingController();
    noRooms = TextEditingController();
    noWashrooms = TextEditingController();
    noKitchens = TextEditingController();
  }
}
