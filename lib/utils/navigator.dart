import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Navigates to the specified screen
navigateTo(Widget screen, {dynamic arguments}) {
  Get.to(
    screen,
    arguments: arguments,
    transition: Transition.rightToLeft,
    duration: const Duration(milliseconds: 300),
  );
}

// Replace previous screen from stack and navigates to the specified screen
navigateToReplace(Widget screen, {dynamic arguments}) {
  Get.off(
    screen,
    arguments: arguments,
    transition: Transition.rightToLeft,
    duration: const Duration(milliseconds: 300),
  );
}

// Remove all previous stack and set new screen as the first screen
navigateAndRemoveUntil(Widget screen, {dynamic arguments}) {
  Get.offAll(
    screen,
    arguments: arguments,
    transition: Transition.rightToLeft,
    duration: const Duration(milliseconds: 300),
  );
}
