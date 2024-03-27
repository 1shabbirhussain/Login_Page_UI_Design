import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;

  // Method to update email value
  void setEmail(String value) {
    email.value = value;
  }

  void setPassword(String value) {
    password.value = value;
  }

  void login() {
    print("Login Pressed");
    if (GetUtils.isEmail(email.value) && password.value.length >= 6) {
      // Email is valid, navigate to the home page
      Get.offNamed('/home');
      email.value = "";
      password.value = "";
    } else if (GetUtils.isEmail(email.value) &&
        (password.value.length <= 6 || password.isEmpty)) {
      Get.snackbar(
        'Error',
        'Please enter a valid Password of length more than 5 ',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } else {
      // Show validation error
      Get.snackbar(
        'Error',
        'Please enter a valid email address',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
