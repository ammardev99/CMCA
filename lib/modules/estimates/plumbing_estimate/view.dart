import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class PlumbingEstimatePage extends StatelessWidget {
  PlumbingEstimatePage({super.key});

  final logic = Get.put(PlumbingEstimateLogic());
  final state = Get.find<PlumbingEstimateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
