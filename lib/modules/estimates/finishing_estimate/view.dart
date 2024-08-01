import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class FinishingEstimatePage extends StatelessWidget {
  FinishingEstimatePage({super.key});

  final logic = Get.put(FinishingEstimateLogic());
  final state = Get.find<FinishingEstimateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
