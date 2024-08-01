import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class FoundationEstimatePage extends StatelessWidget {
  FoundationEstimatePage({super.key});

  final logic = Get.put(FoundationEstimateLogic());
  final state = Get.find<FoundationEstimateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
