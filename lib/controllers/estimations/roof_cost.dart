import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../view/estimations/result_receipt.dart';
import '../../widgets/widgets_io.dart';

class RoofCostController extends GetxController {
  final roofLength = TextEditingController();
  final roofWidth = TextEditingController();
  final roofThickness = TextEditingController();

  void calculateRoofCost() {
    final double length = double.tryParse(roofLength.text) ?? 0.0;
    final double width = double.tryParse(roofWidth.text) ?? 0.0;
    final double thickness = double.tryParse(roofThickness.text) ?? 0.0;

    final double volume = length * width * thickness;

    final int cementBags = (volume / 5).ceil(); // RCC: 1 bag per 5 cu ft
    final double sand = volume * 1.5;
    final double aggregate = volume * 2.0;
    final double steel = volume * 2.5; // in kg

    Get.to(
      () => ResultReceiptScreen(
        listData: DynamicTable(
          infoData: {
            "Roof Length (ft)": roofLength.text,
            "Roof Width (ft)": roofWidth.text,
            "Roof Thickness (ft)": roofThickness.text,
            "Volume (cu ft)": volume.toStringAsFixed(2),
            "Cement Bags": "$cementBags",
            "Sand (cu ft)": sand.toStringAsFixed(1),
            "Aggregate (cu ft)": aggregate.toStringAsFixed(1),
            "Steel (kg)": steel.toStringAsFixed(1),
          },
        ),
      ),
    );
  }
}
