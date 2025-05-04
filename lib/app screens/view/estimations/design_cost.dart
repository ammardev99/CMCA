import 'package:cmca/models/builder_class_types.dart';
import 'package:cmca/widgets/custom_select_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/config_io.dart';
import '../../../controllers/controller_io.dart';
import '../../../widgets/widgets_io.dart';

class DesignCost extends StatefulWidget {
  const DesignCost({super.key});

  @override
  State<DesignCost> createState() => _DesignCostState();
}

class _DesignCostState extends State<DesignCost> {
  final controller = Get.put(DesignCostController());

  final _formKey = GlobalKey<FormState>();
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
            key: _formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              headingText('Design Class'),
              sizeBox(5),
              CustomListDropdown(
                items: designClass,
                hintText: "Select Design Type",
                onChanged: (value) {
                  setState(() {
                    controller.buildingClass = value!;
                  });
                },
              ),
              sizeBox(15),
              InputFormFieldApp(
                label: "Area Length",
                hint: 'Enter area length 00.0 ft',
                controller: controller.areaLength,
                inputType: TextInputType.number,
                validator: validateValue,
              ),
              sizeBox(15),
              InputFormFieldApp(
                label: "Area Width",
                hint: 'Enter area width 00.0 ft',
                controller: controller.areaWidth,
                inputType: TextInputType.number,
                validator: validateValue,
              ),
              sizeBox(30),
              CustomButton(
                  label: "Calculate",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      controller.calculateDesignCost();
                    } else {
                      // print("Form validation failed.");
                    }
                  }),
              sizeBox(30),
            ]),
          )),
    ));
  }
}
