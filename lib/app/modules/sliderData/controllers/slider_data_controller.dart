import 'dart:developer';

import 'package:get/get.dart';
import 'package:tokopedia/app/controllers/slider_controller.dart';

class SliderDataController extends GetxController {
  final count = 0.obs;
  var data;

  @override
  void onInit() {
    data = SliderController().getData();
    log('jalan =>');
    print(data);

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
