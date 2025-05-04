import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../app screens/view/estimations/result_receipt.dart';
import '../../widgets/widgets_io.dart';

class FurnitureCostController extends GetxController {
  final bedCount = TextEditingController();
  final sideTableCount = TextEditingController();
  final cabinetCount = TextEditingController();
  final sofaCount = TextEditingController();

  // Predefined average costs
  final int bedCost = 35000;
  final int sideTableCost = 7500;
  final int cabinetCost = 25000;
  final int sofaCost = 50000;

  void calculateFurnitureCost() {
    final int beds = int.tryParse(bedCount.text) ?? 0;
    final int sideTables = int.tryParse(sideTableCount.text) ?? 0;
    final int cabinets = int.tryParse(cabinetCount.text) ?? 0;
    final int sofas = int.tryParse(sofaCount.text) ?? 0;

    final int totalCost = (beds * bedCost) +
        (sideTables * sideTableCost) +
        (cabinets * cabinetCost) +
        (sofas * sofaCost);

    Get.to(
      () => ResultReceiptScreen(
        listData: DynamicTable(
          infoData: {
            "Bed x$beds": "Rs. ${beds * bedCost}",
            "Side Table x$sideTables": "Rs. ${sideTables * sideTableCost}",
            "Cabinet x$cabinets": "Rs. ${cabinets * cabinetCost}",
            "Sofa x$sofas": "Rs. ${sofas * sofaCost}",
            "🪑 Total Furniture Cost": "Rs. $totalCost",
          },
        ),
      ),
    );
  }
}
