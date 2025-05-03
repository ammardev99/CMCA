import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/config_io.dart';
import '../../controllers/controller_io.dart';
import '../../widgets/widgets_io.dart';

class RoofCost extends StatefulWidget {
  const RoofCost({super.key});

  @override
  State<RoofCost> createState() => _RoofCostState();
}

class _RoofCostState extends State<RoofCost> {
  final controller = Get.put(RoofCostController());
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customInfoAppBar("Roof", context),
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
                  label: "Length",
                  hint: 'Enter 00.0 ft',
                  controller: controller.roofLength,
                  inputType: TextInputType.number,
                  validator: validateValue,
                ),
                sizeBox(15),
                InputFormFieldApp(
                  label: "Width",
                  hint: 'Enter 00.0 ft',
                  controller: controller.roofWidth,
                  inputType: TextInputType.number,
                  validator: validateValue,
                ),
                sizeBox(15),
                InputFormFieldApp(
                  label: "Thickness",
                  hint: 'Enter 00.0 ft',
                  controller: controller.roofThickness,
                  inputType: TextInputType.number,
                  validator: validateValue,
                ),
                sizeBox(30),
                CustomButton(
                  label: "Calculate",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      controller.calculateRoofCost();
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
