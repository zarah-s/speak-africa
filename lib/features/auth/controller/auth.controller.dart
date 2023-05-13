import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  void unFocusKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
