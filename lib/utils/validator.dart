
String? validateValue(String? value) {
  if ((value ?? "").isEmpty) {
    return 'required';
  }
  return null;
}

