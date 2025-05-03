import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/config_io.dart';
import '../../controllers/controller_io.dart';
import '../../widgets/widgets_io.dart';

class MasonryCost extends StatefulWidget {
  const MasonryCost({super.key});

  @override
  State<MasonryCost> createState() => _MasonryCostState();
}

class _MasonryCostState extends State<MasonryCost> {
  final controller = Get.put(MasonryCostController());
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customInfoAppBar("Masonry", context),
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
                  label: "Height",
                  hint: 'Enter 00.0 ft',
                  controller: controller.wallHeight,
                  inputType: TextInputType.number,
                  validator: validateValue,
                ),
                sizeBox(15),
                InputFormFieldApp(
                  label: "Length",
                  hint: 'Enter 00.0 ft',
                  controller: controller.wallLength,
                  inputType: TextInputType.number,
                  validator: validateValue,
                ),
                sizeBox(15),
                InputFormFieldApp(
                  label: "Thickness",
                  hint: 'Enter 00.0 ft',
                  controller: controller.wallThickness,
                  inputType: TextInputType.number,
                  validator: validateValue,
                ),
                sizeBox(15),
                sizeBox(30),
                CustomButton(
                  label: "Calculate",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      controller.calculateMasonryCost();
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
