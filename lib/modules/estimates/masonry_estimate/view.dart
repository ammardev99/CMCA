import 'package:cmca/widgets/show_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cmca/config/utils/validator.dart';
import 'package:cmca/widgets/app_bar.dart';
import 'package:cmca/widgets/estimate_buttons.dart';
import 'package:cmca/config/utils/formatting.dart';
import 'package:cmca/widgets/input_form_field.dart';

import 'logic.dart';

class MasonryEstimatePage extends StatelessWidget {
  MasonryEstimatePage({super.key});

  final logic = Get.put(MasonryEstimateLogic());
  final state = Get.find<MasonryEstimateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // appBar: customAppbar("Masonry Estimate"),
          appBar: customInfoAppBar("Masonry", context),
            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: logic.formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        infoText("L"),
                        infoText("W"),
                        infoText("H"),
                        //v * 400




                        InputFormFieldApp(
                          label: "Enter typeOfMaterial",
                          hint: '00.0',
                          controller: state.typeOfMaterial!,
                          inputType: TextInputType.number,
                          validator: validateValue,
                        ),
                        sizeBox(15),
                        InputFormFieldApp(
                          label: "Enter wallLength",
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
                        sizeBox(15),
                        InputFormFieldApp(
                          label: "Enter wallThickness",
                          hint: '00.0',
                          controller: state.wallThickness!,
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
                            return Column(
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
