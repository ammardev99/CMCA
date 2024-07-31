import 'package:cmca/utils/color.dart';
import 'package:cmca/utils/validator.dart';
import 'package:cmca/widgets/formatting.dart';
import 'package:cmca/widgets/input_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class CalculatePage extends StatelessWidget {
  CalculatePage({super.key});

  final logic = Get.put(CalculateLogic());
  final state = Get.find<CalculateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: const BackButton(
                color: AppColors.white,
              ),
              backgroundColor: AppColors.primary,
              title: appHeading("Design Estimate", AppColors.white),
              centerTitle: true,
            ),
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
                          controller: state.l,
                          inputType: TextInputType.number,
                          validator: validateValue,
                        ),
                        sizeBox(15),
                        InputFormFieldApp(
                          label: "Enter width",
                          hint: '00.0',
                          controller: state.w,
                          inputType: TextInputType.number,
                          validator: validateValue,
                        ),
                        sizeBox(15),
                        InputFormFieldApp(
                          label: "Enter deepth",
                          hint: '00.0',
                          controller: state.d,
                          inputType: TextInputType.number,
                          validator: validateValue,
                        ),
                        sizeBox(15),
                        Obx(() {
                          if (logic.showResult.value == true) {
                            return InputFormFieldApp(
                                label: "                                Result",
                                hint: '...',
                                controller: state.r,
                                inputType: TextInputType.none);
                          } else {
                            return const Text('');
                          }
                        }),
                        sizeBox(30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 80,
                              height: 45,
                              child: TextButton(
                                  style: ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(
                                          AppColors.black.withOpacity(0.1))),
                                  onPressed: () {
                                    logic.showResult.value = false;
                                    state.d.clear();
                                    state.l.clear();
                                    state.w.clear();
                                  },
                                  child:
                                      appHeading('Clear', AppColors.primary)),
                            ),
                            SizedBox(
                              height: 45,
                              width: 220,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: WidgetStateProperty.all(
                                          AppColors.secondary)),
                                  onPressed: () {
                                    if (logic.formKey.currentState!
                                        .validate()) {
                                      logic.getresult();
                                      logic.showResult.value = true;
                                    }
                                  },
                                  child:
                                      appHeading('Calculate', AppColors.white)),
                            ),
                          ],
                        )
                      ]),
                ))));
  }
}
