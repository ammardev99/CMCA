import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../app screens/view/estimations/result_receipt.dart';
import '../../widgets/widgets_io.dart';

class FoundationCostController extends GetxController {
  final wallThickness = TextEditingController();
  final wallLength = TextEditingController();
  final wallDepthOrHeight = TextEditingController();

  void calculateFoundationCost() {
    final double length = double.tryParse(wallLength.text) ?? 0.0;
    final double thickness = double.tryParse(wallThickness.text) ?? 0.0;
    final double height = double.tryParse(wallDepthOrHeight.text) ?? 0.0;

    final double volume = length * thickness * height; // cubic feet

    final int estimatedBricks = (volume * 13).round(); // 13 bricks per cu ft (avg)
    final int estimatedCementBags = (volume / 6.5).ceil(); // 1 bag = 6.5 cu ft

    Get.to(
      () => ResultReceiptScreen(
        listData: DynamicTable(
          infoData: {
            "Wall Thickness (ft)": wallThickness.text,
            "Wall Length (ft)": wallLength.text,
            "Wall Height/Depth (ft)": wallDepthOrHeight.text,
            "Volume (cu ft)": volume.toStringAsFixed(2),
            "Estimated Bricks": "$estimatedBricks",
            "Estimated Cement Bags": "$estimatedCementBags",
          },
        ),
      ),
    );
  }
}
