import 'package:cmca/widgets/show_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cmca/config/utils/validator.dart';
import 'package:cmca/widgets/app_bar.dart';
import 'package:cmca/widgets/estimate_buttons.dart';
import 'package:cmca/config/utils/formatting.dart';
import 'package:cmca/widgets/input_form_field.dart';

import 'logic.dart';

class FinishingEstimatePage extends StatelessWidget {
  FinishingEstimatePage({super.key});

  final logic = Get.put(FinishingEstimateLogic());
  final state = Get.find<FinishingEstimateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // appBar: customAppbar("Finishing Estimate"),
          appBar: customInfoAppBar("Finishing", context),

            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: logic.formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        infoText("Type"),
                          // Palster,   stone work,   paint,  distamper
                          infoText("L"),
                          infoText("H"),
                          infoText("T"),
                          // 250,   350,   15,  15
                        infoText(""),
                        infoText(""),
                        infoText(""),
                        infoText(""),
                        // find valume
                        // v*350 cost




                        InputFormFieldApp(
                          label: "Enter typeOfMaterial",
                          hint: '00.0',
                          controller: state.typeOfMaterial!,
                          inputType: TextInputType.number,
                          validator: validateValue,
                        ),
                        sizeBox(15),
                        InputFormFieldApp(
                          label: "Enter length",
                          hint: '00.0',
                          controller: state.wallLength!,
                          inputType: TextInputType.number,
                          validator: validateValue,
                        ),
                        sizeBox(15),
                        InputFormFieldApp(
                          label: "Enter wallHeight",
                          hint: '00.0',
                          controller: state.wallHeight!,
                          inputType: TextInputType.number,
                          validator: validateValue,
                        ),
                        sizeBox(30),
                        Obx(() {
                          return EstimateActionButtons(
                              isLoading: state.isLoading.value,
                              getResult: logic.getresult,
                              stateClear: state.stateClear);
                        }),
                        sizeBox(30),
                        sizeBox(15),
                        Obx(() {
                          if (state.showResult.value == true) {                            return Column(
                              children: [
                                titleText('Estimated Result'),
                              DetailsTable(),
                              sizeBox(100)
                              ],
                            );
                          } else {
                            return const Text('');
                          }
                        }),
                      ]),
                ))));
  }
}
