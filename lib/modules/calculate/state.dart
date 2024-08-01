import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculateState {
  TextEditingController? l;
  TextEditingController? w;
  TextEditingController? d;
  TextEditingController? r;
  RxBool isLoading = false.obs;
  RxBool showResult = false.obs;
  stateClear() {
    l!.clear();
    w!.clear();
    d!.clear();
    r!.clear();
    isLoading.value = false;
    showResult.value = false;
  }

  CalculateState() {
    ///Initialize variables
    l = TextEditingController();
    w = TextEditingController();
    d = TextEditingController();
    r = TextEditingController();
  }
}
