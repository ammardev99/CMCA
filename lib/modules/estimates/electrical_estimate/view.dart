import 'package:cmca/widgets/show_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cmca/config/utils/validator.dart';
import 'package:cmca/widgets/app_bar.dart';
import 'package:cmca/widgets/estimate_buttons.dart';
import 'package:cmca/config/utils/formatting.dart';
import 'package:cmca/widgets/input_form_field.dart';

import 'logic.dart';

class ElectricalEstimatePage extends StatelessWidget {
  ElectricalEstimatePage({super.key});

  final logic = Get.put(ElectricalEstimateLogic());
  final state = Get.find<ElectricalEstimateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: customInfoAppBar("Electrical", context),
            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: logic.formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        infoText("length"),
                        infoText("width"),
                        // find area
                        // a*100 cost

                        InputFormFieldApp(
                          label: "Enter buildingType",
                          hint: '00.0',
                          controller: state.buildingType!,
                          inputType: TextInputType.number,
                          validator: validateValue,
                        ),
                        sizeBox(15),
                        InputFormFieldApp(
                          label: "Enter noRooms",
                          hint: '00.0',
                          controller: state.noRooms!,
                          inputType: TextInputType.number,
                          validator: validateValue,
                        ),
                        sizeBox(15),
                        InputFormFieldApp(
                          label: "Enter noKitchens",
                          hint: '00.0',
                          controller: state.noKitchens!,
                          inputType: TextInputType.number,
                          validator: validateValue,
                        ),
                        sizeBox(15),
                        InputFormFieldApp(
                          label: "Enter noWashrooms",
                          hint: '00.0',
                          controller: state.noWashrooms!,
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
