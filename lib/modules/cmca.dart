import 'package:cmca/models/estimate_model.dart';
import 'package:cmca/utils/color.dart';
import 'package:cmca/widgets/drawer.dart';
import 'package:cmca/widgets/estimate_card.dart';
import 'package:cmca/widgets/formatting.dart';
import 'package:flutter/material.dart';

class CMCA extends StatefulWidget {
  const CMCA({super.key});

  @override
  State<CMCA> createState() => _CMCAState();
}

class _CMCAState extends State<CMCA> {
  Future<void> _refreshRates() async {
    await Future.delayed(const Duration(seconds: 2));
    return;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: customDrawer(),
            appBar: AppBar(
              backgroundColor: AppColors.primary,
              iconTheme: const IconThemeData(
                color: AppColors
                    .white, // Set the color you want for the drawer icon
              ),
              title:
                  headingText("Civil Material Cost Analysis", AppColors.white),
              centerTitle: true,
            ),
            body: RefreshIndicator(
                onRefresh: _refreshRates,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      GridView.builder(
                        itemCount: estimateOption.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 250,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) =>
                            estimateOptionCard(estimateOption[index]),
                      ),
                      sizeBox(40),
                      infoText("App is under development.")
                    ],
                  ),
                ))));
  }
}
