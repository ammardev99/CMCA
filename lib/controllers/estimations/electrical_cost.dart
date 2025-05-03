import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../view/estimations/result_receipt.dart';
import '../../widgets/widgets_io.dart';

class ElectricalCostController extends GetxController {
  final noRooms = TextEditingController();
  final noWashrooms = TextEditingController();
  final noKitchens = TextEditingController();

  void calculateElectricalCost() {
    final int rooms = int.tryParse(noRooms.text) ?? 0;
    final int washrooms = int.tryParse(noWashrooms.text) ?? 0;
    final int kitchens = int.tryParse(noKitchens.text) ?? 0;

    // Raw wire (ft), before doubling for live + neutral
    final int blueWireRaw = (rooms * 100) + (washrooms * 50);
    final int redWireRaw = (rooms * 100) + (kitchens * 150);

    // Considering live + neutral
    final int blueWire = blueWireRaw * 2;
    final int redWire = redWireRaw * 2;

    final int totalWire = blueWire + redWire;

    // Cost Estimation (optional)
    final int estimatedCost = (totalWire * 25); // 25 PKR per ft as example

    Get.to(
      () => ResultReceiptScreen(
        listData: DynamicTable(
          infoData: {
            "Rooms": "$rooms",
            "Washrooms": "$washrooms",
            "Kitchens": "$kitchens",
            "🔵 Blue (Low Load)": "$blueWire ft",
            "🔴 Red (High Load)": "$redWire ft",
            "🔌 Total Required": "$totalWire ft",
            "Estimated Cost": "Rs. $estimatedCost",
          },
        ),
      ),
    );
  }
}
