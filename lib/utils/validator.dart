
String? validateValue(String? value) {
  if ((value ?? "").isEmpty) {
    return 'is required';
  }
  return null;
}

