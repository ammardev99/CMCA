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

  Widget headingText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }

  Widget sizeBox(double height) {
    return SizedBox(height: height);
  }
}
