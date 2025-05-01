import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../widgets/widgets_io.dart';

class DesignCostController extends GetxController {
  final areaLength = TextEditingController();
  final areaWidth = TextEditingController();
  String buildingClass = "";

  calculateDesignCost() {
    customReceipt(
      Get.context!,
       DynamicTable(
        infoData: {
          "Design Type": buildingClass,
          "Area L": areaLength.text,
          "Area W": areaWidth.text,
                  },
      ),
    );
  }
}

// class BroilerFeedController extends GetxController {
//   final brirdsController = TextEditingController();
//   final brirdsAgeController = TextEditingController();
//   final numberFormatter = NumberFormat.decimalPattern();

// }
