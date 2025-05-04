import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/config_io.dart';
import '../../../controllers/controller_io.dart';
import '../../../widgets/widgets_io.dart';

class ElectricalCost extends StatefulWidget {
  const ElectricalCost({super.key});

  @override
  State<ElectricalCost> createState() => _ElectricalCostState();
}

class _ElectricalCostState extends State<ElectricalCost> {
  final controller = Get.put(ElectricalCostController());
  final _formKey = GlobalKey<FormState>();
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
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizeBox(15),
                InputFormFieldApp(
                  label: "Kitchens",
                  hint: 'Enter 00',
                  controller: controller.noKitchens,
                  inputType: TextInputType.number,
                  validator: validateValue,
                ),
                sizeBox(15),
                InputFormFieldApp(
                  label: "Rooms",
                  hint: 'Enter 00',
                  controller: controller.noRooms,
                  inputType: TextInputType.number,
                  validator: validateValue,
                ),
                sizeBox(15),
                InputFormFieldApp(
                  label: "Washrooms",
                  hint: 'Enter 00',
                  controller: controller.noWashrooms,
                  inputType: TextInputType.number,
                  validator: validateValue,
                ),

                sizeBox(30),
                CustomButton(
                  label: "Calculate",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      controller.calculateElectricalCost();
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
