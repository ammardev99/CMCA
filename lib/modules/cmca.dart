import 'package:cmca/utils/color.dart';
import 'package:cmca/widgets/estimate_card.dart';
import 'package:cmca/widgets/formatting.dart';
import 'package:flutter/material.dart';

class CMCA extends StatefulWidget {
  const CMCA({super.key});

  @override
  State<CMCA> createState() => _CMCAState();
}

class _CMCAState extends State<CMCA> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          title: appHeading("Civil Material Cost Analysis", AppColors.white),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      estimateCard('label', 'assets/png/app_icon.png'),
                      estimateCard('label', 'assets/png/app_icon.png'),
                    ]),
              ],
            )),
      ),
    );
  }
}
