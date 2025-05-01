import 'package:cmca/widgets/show_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cmca/config/utils/validator.dart';
import 'package:cmca/widgets/app_bar.dart';
import 'package:cmca/widgets/estimate_buttons.dart';
import 'package:cmca/config/utils/formatting.dart';
import 'package:cmca/widgets/input_form_field.dart';

import 'logic.dart';

class FurnitureEstimatePage extends StatelessWidget {
  FurnitureEstimatePage({super.key});

  final logic = Get.put(FurnitureEstimateLogic());
  final state = Get.find<FurnitureEstimateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // appBar: customAppbar("Furniture Estimate"),
          appBar: customInfoAppBar("Furniture", context),
            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: logic.formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [



                        infoText("No Sofa"), // 55k
                        infoText("No D-Bed: "),// 50
                        infoText("No S-Bed: "),// 30
                        infoText("No Dining Table seasts "),// 4/35 6/50
                        infoText("No Chairs"), // 7000
                        infoText("No Desk"), // 20000
                        infoText("No Door"), // 18000
                        InputFormFieldApp(
                          label: "Enter typeBuilding",
                          hint: '00.0',
                          controller: state.typeBuilding!,
                          inputType: TextInputType.number,
                          validator: validateValue,
                        ),
                        sizeBox(15),
                        InputFormFieldApp(
                          label: "Enter noRoom",
                          hint: '00.0',
                          controller: state.noRoom!,
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
