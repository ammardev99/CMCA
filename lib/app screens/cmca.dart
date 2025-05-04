import 'package:cmca/models/lists/estimate_options.dart';
import 'package:cmca/config/utils/color.dart';
import 'package:cmca/widgets/drawer.dart';
import 'package:cmca/widgets/estimate_card.dart';
import 'package:cmca/config/utils/formatting.dart';
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
        drawer: customDrawer(context),
        // App bar
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          leading: const DrawerButton(color: Colors.white),
          title: headingText("Civil Material Cost Analysis", AppColors.white),
          centerTitle: true,
        ),
        // body
        body: RefreshIndicator(
          onRefresh: _refreshRates,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(15),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: estimateOption.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder:
                  (context, index) => estimateOptionCard(estimateOption[index]),
            ),
          ),
        ),
      ),
    );
  }
}
