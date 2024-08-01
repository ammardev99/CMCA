import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class DesignEstimatePage extends StatelessWidget {
  DesignEstimatePage({super.key});

  final logic = Get.put(DesignEstimateLogic());
  final state = Get.find<DesignEstimateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
