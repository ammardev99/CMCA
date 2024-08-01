import 'package:cmca/utils/color.dart';
import 'package:cmca/widgets/formatting.dart';
import 'package:flutter/material.dart';

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
          width: 220,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(AppColors.secondary),
              minimumSize: WidgetStateProperty.all(const Size(double.infinity, 50)),
            ),
            onPressed: getResult,
            child: isLoading
                ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                : appHeading("Calculate", Colors.white),
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(
          height: 45,
          child: OutlinedButton(
            onPressed: stateClear,
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: AppColors.black.withOpacity(0.4)),
            ),
            child: appHeading('Clear', AppColors.black.withOpacity(0.4)),
          ),
        ),
      ],
    );
  }
}
