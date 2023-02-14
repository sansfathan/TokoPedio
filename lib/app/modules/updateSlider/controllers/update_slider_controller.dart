import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UpdateSliderController extends GetxController {
  final data = Get.arguments;
  final active = true.obs;
  changeActivation() => active.toggle();

  TextEditingController gambarSlider = TextEditingController();
  TextEditingController dashSlider = TextEditingController();

  final count = 0.obs;
  @override
  void onInit() {
    gambarSlider.text = (data.data() as Map<String, dynamic>)['gambarSlider'];
    dashSlider.text = (data.data() as Map<String, dynamic>)['dashSlider'];
    active.value = (data.data() as Map<String, dynamic>)['activeSlider'];
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
