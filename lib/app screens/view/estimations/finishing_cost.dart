import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/config_io.dart';
import '../../../controllers/controller_io.dart';
import '../../../widgets/widgets_io.dart';

class FinishingCost extends StatefulWidget {
  const FinishingCost({super.key});

  @override
  State<FinishingCost> createState() => _FinishingCostState();
}

class _FinishingCostState extends State<FinishingCost> {
  final controller = Get.put(FinishingCostController());
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customInfoAppBar("Finishing", context),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizeBox(15),
                InputFormFieldApp(
                  label: "Wall Height",
                  hint: 'Enter 00.0 ft',
                  controller: controller.wallHeight,
                  inputType: TextInputType.number,
                  validator: validateValue,
                ),
                sizeBox(15),
                InputFormFieldApp(
                  label: "Wall Length",
                  hint: 'Enter 00.0 ft',
                  controller: controller.wallLength,
                  inputType: TextInputType.number,
                  validator: validateValue,
                ),

                sizeBox(30),
                CustomButton(
                  label: "Calculate",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      controller.calculateFinishingCost();
                    } else {
                      // print("Form validation failed.");
                    }
                  },
                ),
                sizeBox(30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
