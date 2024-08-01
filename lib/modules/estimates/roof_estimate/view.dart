import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class RoofEstimatePage extends StatelessWidget {
  RoofEstimatePage({super.key});

  final logic = Get.put(RoofEstimateLogic());
  final state = Get.find<RoofEstimateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
