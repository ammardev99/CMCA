import 'package:cmca/widgets/loading_circle.dart';
import 'package:flutter/material.dart';

import '../config/config_io.dart';

class EstimateActionButtons extends StatelessWidget {
  final bool isLoading;
  final VoidCallback getResult;
  final VoidCallback stateClear;

  const EstimateActionButtons({
    super.key,
    required this.isLoading,
    required this.getResult,
    required this.stateClear,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 45,
          width: 180,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(AppColors.secondary),
              minimumSize:
                  WidgetStateProperty.all(const Size(double.infinity, 50)),
            ),
            onPressed: getResult,
            child: isLoading
                ? myLodaing(20)
                : headingText("Calculate", Colors.white),
          ),
        ),
        SizedBox(
          height: 45,
          child: OutlinedButton(
            onPressed: stateClear,
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: AppColors.black.withAlpha(102)),
            ),
            child: headingText('Clear', AppColors.black.withAlpha(102)),
          ),
        ),
      ],
    );
  }
}
