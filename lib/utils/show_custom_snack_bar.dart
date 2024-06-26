import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/constants/colors.dart';

showCustomSnackBar(String msg, {bool taskSuccess = true}) {
  Get.showSnackbar(
    GetSnackBar(
      messageText: Text(
        msg,
        textAlign: TextAlign.center,
        style: const TextStyle(color: whiteColor),
      ),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: taskSuccess == true
          ? greenColor.withOpacity(0.9)
          : redColor.withOpacity(0.9),
      borderRadius: 20,
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      snackStyle: SnackStyle.FLOATING,
      maxWidth: 500,
      duration: const Duration(milliseconds: 1500),
    ),
  );
}
