import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginState {
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();
  TextEditingController loggedInUserEmail = TextEditingController();
  RxBool isLoading = false.obs;

  LoginState() {
    userEmail = TextEditingController();
    userPassword = TextEditingController();
  }
}
