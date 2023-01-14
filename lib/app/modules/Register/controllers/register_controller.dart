import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController
  final eyes = false.obs;
 
  final count = 0.obs;
  TextEditingController password = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
  changeEye() {
    log(eyes.toString());
    eyes.toggle();
    log(eyes.toString());
  }
}
