import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  // ignore: todo
  //TODO: Implement SplashScreenController
  final showhidepw = false.obs;
  changeEyes() => showhidepw.toggle();

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
}
