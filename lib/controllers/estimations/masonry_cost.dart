import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../app screens/view/estimations/result_receipt.dart';
import '../../widgets/widgets_io.dart';

class MasonryCostController extends GetxController {
  final wallThickness = TextEditingController();
  final wallLength = TextEditingController();
  final wallHeight = TextEditingController();

  void calculateMasonryCost() {
    final double thickness = double.tryParse(wallThickness.text) ?? 0.0;
    final double length = double.tryParse(wallLength.text) ?? 0.0;
    final double height = double.tryParse(wallHeight.text) ?? 0.0;

    final double volume = thickness * length * height;

    final int estimatedBricks = (volume * 13).round();
    final int estimatedCementBags = (volume / 6.5).ceil();

    Get.to(
      () => ResultReceiptScreen(
        listData: DynamicTable(
          infoData: {
            "Wall Thickness (ft)": wallThickness.text,
            "Wall Length (ft)": wallLength.text,
            "Wall Height (ft)": wallHeight.text,
            "Volume (cu ft)": volume.toStringAsFixed(2),
            "Estimated Bricks": "$estimatedBricks",
            "Estimated Cement Bags": "$estimatedCementBags",
          },
        ),
      ),
    );
  }
}
