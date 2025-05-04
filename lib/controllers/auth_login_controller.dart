import 'package:cmca/app%20screens/cmca.dart';
import 'package:cmca/widgets/show_status.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthLoginController extends GetxController {
  // Form Key
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Controllers for email and password
  final TextEditingController userEmail = TextEditingController();
  final TextEditingController userPassword = TextEditingController();

  // Loading state
  final RxBool isLoading = false.obs;

  // Login Function
  Future<void> login() async {
    if (!formKey.currentState!.validate()) return;

    isLoading.value = true;

    // Simulated network delay
    await Future.delayed(const Duration(seconds: 3));
    isLoading.value = false;

    if (userEmail.text == 'cmca@gmail.com' &&
            userPassword.text == 'Admin1@Saqib' ||
        userPassword.text == 'Admin2@Ammar') {
      Get.offAll(const CMCA());
    } else {
      toastShowText("email /password not match.");
    }
  }

  @override
  void onClose() {
    userEmail.dispose();
    userPassword.dispose();
    super.onClose();
  }
}
