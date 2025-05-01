import 'package:flutter/material.dart';

import '../config/config_io.dart';

class InputFormFieldApp extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final TextInputType inputType;
  final FormFieldValidator<String>? validator;

  const InputFormFieldApp({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.inputType,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headingText(label),
        sizeBox(5),
        TextFormField(
          controller: controller,
          keyboardType: inputType,
          decoration: InputDecoration(
            hintText: hint,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          maxLines: null,
          minLines: 1,
          validator: validator,
        ),
      ],
    );
  }
}