import 'package:flutter/material.dart';

import '../config/config_io.dart';

class DynamicTable extends StatelessWidget {
  final Map<String, String> infoData;

  const DynamicTable({super.key, required this.infoData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Dynamic rows
        ...infoData.entries.map((entry) => _infoRow(entry.key, entry.value)),
      ],
    );
  }

  Widget _infoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(color: AppColors.black)),
          Text(
            value,
            style: const TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
