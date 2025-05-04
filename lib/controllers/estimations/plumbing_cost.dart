import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../app screens/view/estimations/result_receipt.dart';
import '../../widgets/widgets_io.dart';

class PlumbingCostController extends GetxController {
  final noKitchens = TextEditingController();
  final noWashrooms = TextEditingController();

  void calculatePlumbingCost() {
    final int kitchens = int.tryParse(noKitchens.text) ?? 0;
    final int washrooms = int.tryParse(noWashrooms.text) ?? 0;

    // Estimating pipe length (ft)
    final int kitchenPipes = kitchens * 70;
    final int washroomPipes = washrooms * 100;
    final int totalPipes = kitchenPipes + washroomPipes;

    // Optional: Estimated cost (example: Rs. 40 per ft)
    final int estimatedCost = totalPipes * 40;

    Get.to(
      () => ResultReceiptScreen(
        listData: DynamicTable(
          infoData: {
            "Kitchens": "$kitchens",
            "Washrooms": "$washrooms",
            "Kitchen Pipe Required": "$kitchenPipes ft",
            "Washroom Pipe Required": "$washroomPipes ft",
            "🔧 Total Pipe Required": "$totalPipes ft",
            "Estimated Cost": "Rs. $estimatedCost"
          },
        ),
      ),
    );
  }
}
