import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tokopedia/app/controllers/slider_controller.dart';

class CreateSliderController extends GetxController {
  final active = true.obs;
  changeActivation() => active.toggle();

  TextEditingController gambarSlider = TextEditingController();
  TextEditingController deskripsiSlider = TextEditingController();

  uploadGambar() async {
    String data = await SliderController().addPhoto();
    gambarSlider.text = data;
    print(data);
  }

  final count = 0.obs;
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
