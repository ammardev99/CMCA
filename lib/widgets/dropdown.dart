import 'package:flutter/material.dart';

import '../config/config_io.dart';

class InputDropdownFieldApp extends StatefulWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final List<String> options;
  final FormFieldValidator<String>? validator;

  const InputDropdownFieldApp({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.options,
    this.validator,
  });

  @override
  State<InputDropdownFieldApp> createState() => _InputDropdownFieldAppState();
}

class _InputDropdownFieldAppState extends State<InputDropdownFieldApp> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headingText(widget.label),
        sizeBox(5),
        DropdownButtonFormField<String>(
          value: selectedValue,
          hint: Text(widget.hint),
          items: widget.options
              .map((option) => DropdownMenuItem(
                    value: option,
                    child: Text(option),
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              selectedValue = value;
              widget.controller.text = value!;
            });
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          validator: widget.validator,
        ),
      ],
    );
  }
}

class CustomDropdown extends StatelessWidget {
  final String? selectedValue; // Holds the selected value
  final List<String> options; // List of options for the dropdown
  final String hint; // Hint text
  final Function(String?) onChanged; // Callback for value change
  final String? Function(String?)?
      validator; // Validator function for form validation
  final String validText; // Hint text

  const CustomDropdown({
    super.key,
    required this.selectedValue,
    required this.options,
    required this.onChanged,
    this.hint = "Select an option",
    required this.validText,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      focusColor: Colors.transparent,
      value: selectedValue, // Set the selected value
      hint: Text(hint),
      items: options
          .map((option) => DropdownMenuItem(
                value: option,
                child: Text(option),
              ))
          .toList(),
      onChanged: onChanged, // Update the selected value
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
      validator: (value) =>
          value == null || value == validText ? "required" : null,
    );
  }
}
