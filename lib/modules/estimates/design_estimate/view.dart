import 'package:cmca/models/list_data.dart';
import 'package:cmca/widgets/dropdown.dart';
import 'package:cmca/widgets/show_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cmca/utils/validator.dart';
import 'package:cmca/widgets/app_bar.dart';
import 'package:cmca/widgets/estimate_buttons.dart';
import 'package:cmca/widgets/formatting.dart';
import 'package:cmca/widgets/input_form_field.dart';
import 'logic.dart';

class DesignEstimatePage extends StatelessWidget {
  DesignEstimatePage({super.key});

  final logic = Get.put(DesignEstimateLogic());
  final state = Get.find<DesignEstimateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: customAppbar('Design Estimate'),
            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: logic.formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InputDropdownFieldApp(
                            label: "Building Class",
                            hint: "Luxury, Medium, Economical",
                            controller: state.typeBuilding!,
                            options: buildingClass,
                            validator: validateValue),
                        sizeBox(15),
                        InputFormFieldApp(
                          label: "Area Length",
                          hint: 'Enter area length 00.0 ft',
                          controller: state.areaLength!,
                          inputType: TextInputType.number,
                          validator: validateValue,
                        ),
                        sizeBox(15),
                        InputFormFieldApp(
                          label: "Area Width",
                          hint: 'Enter area width 00.0 ft',
                          controller: state.areaWidth!,
                          inputType: TextInputType.number,
                          validator: validateValue,
                        ),
                        sizeBox(15),
                        //   label: "Enter designType",
                        //   label: "Enter totalArea",
                        //   label: "Enter coverArea",
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
                                // DetailsTable(),
                                ResultTable(
                                    quantity: logic.getSqFt().toString(),
                                    cost: logic.getCost().toString(),
                                    quality: "quality",
                                    manPower: "manPower",
                                    duration: "duration",
                                    lifeSpan: 'lifeSpan',
                                    samplesImages: 'samplesImages',
                                    standardProcedure: 'standardProcedure',
                                    serviceProvidersContact:
                                        'serviceProvidersContact'),
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
