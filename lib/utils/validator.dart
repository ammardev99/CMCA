
import 'package:get/get.dart';

String? validateValue(String? value) {
  if ((value ?? "").isEmpty) {
    return 'required';
  }
  return null;
}


String? validEmail(String? value) {
  if ((value ?? "").isEmpty) {
    return 'Email is required';
  } else if (!GetUtils.isEmail(value!)) {
    return 'Invalid email';
  }
  return null;
}


String? valid8digitPassword(String? value) {
  if ((value ?? "").isEmpty) {
    return 'Password is required';
  }
  if (value!.length < 8) {
    return 'Password must be at least 8 characters long';
  }
  if (!RegExp(r'^(?=.*?[A-Z])').hasMatch(value)) {
    return 'Password must have at least one uppercase letter';
  }
  if (!RegExp(r'^(?=.*?[a-z])').hasMatch(value)) {
    return 'Password must have at least one lowercase letter';
  }
  if (!RegExp(r'^(?=.*?[0-9])').hasMatch(value)) {
    return 'Password must have at least one digit';
  }
  if (!RegExp(r'^(?=.*?[!@#\$&*~])').hasMatch(value)) {
    return 'Password must have at least one special character';
  }
  return null;
}

