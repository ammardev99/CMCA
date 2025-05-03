import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../view/estimations/result_receipt.dart';
import '../../widgets/widgets_io.dart';

class FinishingCostController extends GetxController {
  final wallHeight = TextEditingController();
  final wallLength = TextEditingController();
  final String typeOfMaterial = "Paint"; // default fixed to "Paint"

  final int paintCoveragePerLiter = 10; // in square meters
  final int paintCostPerLiter = 600;

  void calculateFinishingCost() {
    final double height = double.tryParse(wallHeight.text) ?? 0;
    final double length = double.tryParse(wallLength.text) ?? 0;
    final double area = height * length;

    final double requiredLiters = area / paintCoveragePerLiter;
    final double estimatedCost = requiredLiters * paintCostPerLiter;

    Get.to(
      () => ResultReceiptScreen(
        listData: DynamicTable(
          infoData: {
            "Material": typeOfMaterial,
            "Wall Height": "$height m",
            "Wall Length": "$length m",
            "Wall Area": "$area m²",
            "Required Paint": "${requiredLiters.toStringAsFixed(2)} L",
            "Estimated Cost": "Rs. ${estimatedCost.toStringAsFixed(0)}",
          },
        ),
      ),
    );
  }
}
