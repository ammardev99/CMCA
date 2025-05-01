import 'package:flutter/material.dart';

class CustomListDropdown extends StatelessWidget {
  final List<String> items;
  final String? selectedValue;
  final Function(String?) onChanged;
  final String? hintText;
  final String? Function(String?)? validator;

  const CustomListDropdown({
    super.key,
    required this.items,
    required this.onChanged,
    this.selectedValue,
    this.hintText,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedValue?.isEmpty ?? true ? null : selectedValue,
      isExpanded: true,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      ),
      hint: hintText != null ? Text(hintText!) : null,
      items: items.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
