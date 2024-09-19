import 'package:cmca/widgets/formatting.dart';
import 'package:flutter/material.dart';

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


class InputDropDown extends StatefulWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final List<String> options;
  final FormFieldValidator<String>? validator;
  final Function? onClear; // New callback function to manage clear action

  const InputDropDown({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.options,
    this.validator,
    this.onClear, // Accepting the function as an argument
  });

  @override
  State<InputDropDown> createState() => _InputDropDownState();
}

class _InputDropDownState extends State<InputDropDown> {
  String? selectedValue;

  // Function to clear the selected value and the text in the controller
  void clearSelection() {
    setState(() {
      selectedValue = null; // Reset selected value
      widget.controller.clear(); // Clear the controller text
    });

    if (widget.onClear != null) {
      widget.onClear!(); // Call the callback if provided
    }
  }

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
        // sizeBox(10),
        // ElevatedButton(
        //   onPressed: clearSelection, // Button to trigger the clear function
        //   child: const Text('Clear Selection'),
        // ),
      ],
    );
  }
}
