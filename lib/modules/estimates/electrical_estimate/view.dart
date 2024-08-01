import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class ElectricalEstimatePage extends StatelessWidget {
  ElectricalEstimatePage({super.key});

  final logic = Get.put(ElectricalEstimateLogic());
  final state = Get.find<ElectricalEstimateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
