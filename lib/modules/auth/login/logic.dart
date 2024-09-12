import 'package:cmca/modules/auth/login/state.dart';
import 'package:cmca/modules/cmca.dart';
import 'package:cmca/widgets/show_status.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginLogic extends GetxController {
  final LoginState state = LoginState();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  get formKey => _formKey;

  Future<void> login() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    state.isLoading.value = true;
    await Future.delayed(const Duration(seconds: 5));
    if (state.userEmail.text == 'cmca@gmail.com' &&
        state.userPassword.text == 'Admin@Saqib1') {
      Get.offAll(const CMCA());
    } else {
      toastShowText("email /password not match.");
    }
    state.isLoading.value = false;
  }
}
