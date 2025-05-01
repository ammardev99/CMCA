import 'package:cmca/models/list_data.dart';
import 'package:cmca/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cmca/widgets/app_bar.dart';
import 'package:cmca/widgets/estimate_buttons.dart';
import 'package:cmca/widgets/input_form_field.dart';
import '../../config/config_io.dart';
import 'logic.dart';

class DesignEstimatePage extends StatelessWidget {
  DesignEstimatePage({super.key});

  final logic = Get.put(DesignEstimateLogic());
  final state = Get.find<DesignEstimateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customInfoAppBar("Design", context),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(20),
          child: Form(
            key: logic.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //   label: "Enter designType",
                //   label: "Enter totalArea",
                headingText('Design Class'),
                sizeBox(5),
                Obx(
                  () => CustomDropdown(
                    selectedValue: state.typeBuilding.value,
                    options: designClass,
                    onChanged: (value) {
                      state.typeBuilding.value = value;
                    },
                    validText: "Select Design Type",
                  ),
                ),
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
                sizeBox(30),
                Obx(() {
                  return EstimateActionButtons(
                    isLoading: state.isLoading.value,
                    getResult: logic.getresult,
                    stateClear: state.stateClear,
                  );
                }),
                sizeBox(30),
                Obx(() {
                  if (state.showResult.value) {
                    return Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          titleText('Design Estinate'),
                          infoText(logic.getDate()),
                          const Divider(color: AppColors.primary),
                          sizeBox(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              infoText("Design Type", AppColors.primary),
                              infoText(state.typeBuilding.value.toString()),
                            ],
                          ),
                          sizeBox(10),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              infoText("Area", AppColors.primary),
                              infoText('${logic.getSqFt()} sq ft'),
                            ],
                          ),
                          sizeBox(10),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              infoText("Duration", AppColors.primary),
                              infoText("1 Week"),
                            ],
                          ),
                          sizeBox(5),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              infoText("Design Cost", AppColors.primary),
                              infoText(
                                'Rs: ${logic.getCost().toString()}',
                                AppColors.primary,
                              ),
                            ],
                          ),
                          sizeBox(5),
                          const Divider(),
                          infoText('system generated cost'),
                          sizeBox(5),
                          const Divider(),
                          sizeBox(5),
                          OutlinedButton.icon(
                            onPressed: () {
                              // logic.saveToGallery(context);
                            },
                            icon: const Icon(Icons.download),
                            label: const Text('Save to Gallery'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return const Text('');
                  }
                }),
                sizeBox(15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
