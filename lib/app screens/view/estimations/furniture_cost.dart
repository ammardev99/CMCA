import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/config_io.dart';
import '../../../controllers/controller_io.dart';
import '../../../widgets/widgets_io.dart';

class FurnitureCost extends StatefulWidget {
  const FurnitureCost({super.key});

  @override
  State<FurnitureCost> createState() => _FurnitureCostState();
}

class _FurnitureCostState extends State<FurnitureCost> {
  final controller = Get.put(FurnitureCostController());
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customInfoAppBar("Furniture", context),
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
                  label: "Bed",
                  hint: 'Enter 00.0 ft',
                  controller: controller.bedCount,
                  inputType: TextInputType.number,
                  validator: validateValue,
                ),
                sizeBox(15),
                InputFormFieldApp(
                  label: "cabinet",
                  hint: 'Enter 00.0 ft',
                  controller: controller.cabinetCount,
                  inputType: TextInputType.number,
                  validator: validateValue,
                ),
                sizeBox(15),
                InputFormFieldApp(
                  label: "Side Table",
                  hint: 'Enter 00.0 ft',
                  controller: controller.sideTableCount,
                  inputType: TextInputType.number,
                  validator: validateValue,
                ),
                sizeBox(15),
                InputFormFieldApp(
                  label: "Sofa",
                  hint: 'Enter 00.0 ft',
                  controller: controller.sofaCount,
                  inputType: TextInputType.number,
                  validator: validateValue,
                ),

                sizeBox(30),
                CustomButton(
                  label: "Calculate",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      controller.calculateFurnitureCost();
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
