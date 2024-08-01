import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class FurnitureEstimatePage extends StatelessWidget {
  FurnitureEstimatePage({super.key});

  final logic = Get.put(FurnitureEstimateLogic());
  final state = Get.find<FurnitureEstimateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
