import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cmca/utils/validator.dart';
import 'package:cmca/widgets/app_bar.dart';
import 'package:cmca/widgets/estimate_buttons.dart';
import 'package:cmca/widgets/formatting.dart';
import 'package:cmca/widgets/input_form_field.dart';

import 'logic.dart';

class PlumbingEstimatePage extends StatelessWidget {
  PlumbingEstimatePage({super.key});

  final logic = Get.put(PlumbingEstimateLogic());
  final state = Get.find<PlumbingEstimateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: customAppbar("Plumbing Estimate"),
            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: logic.formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InputFormFieldApp(
                          label: "Enter length",
                          hint: '00.0',
                          controller: state.typeBuilding!,
                          inputType: TextInputType.number,
                          validator: validateValue,
                        ),
                        sizeBox(15),
                        InputFormFieldApp(
                          label: "Enter noWashroom",
                          hint: '00.0',
                          controller: state.noWashroom!,
                          inputType: TextInputType.number,
                          validator: validateValue,
                        ),
                        sizeBox(15),
                        InputFormFieldApp(
                          label: "Enter noKitchen",
                          hint: '00.0',
                          controller: state.noKitchen!,
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
                          if (state.showResult.value == true) {
                            return appHeading('Result');
                          } else {
                            return const Text('');
                          }
                        }),
                      ]),
                ))));
  }
}
