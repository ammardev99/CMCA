import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MasonryEstimatePage extends StatelessWidget {
  MasonryEstimatePage({super.key});

  final logic = Get.put(MasonryEstimateLogic());
  final state = Get.find<MasonryEstimateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
