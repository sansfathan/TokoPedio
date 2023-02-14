import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tokopedia/config/warna.dart';

import '../routes/app_pages.dart';

class SliderController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  addData(bool activeSlider, String dashSlider, String gambarSlider) async {
    CollectionReference slider = firestore.collection("slider");
    final sliderData = {
      "activeSlider": activeSlider,
      "dashSlider": dashSlider,
      "gambarSlider": gambarSlider
    };

    try {
      await slider.add(sliderData).then((DocumentReference doc) =>
          Get.defaultDialog(
              title: "Alert", middleText: "Berhasil menambahkan data"));
    } catch (e) {
      Get.defaultDialog(title: "Alert", middleText: "Gagal menambahkan data");
    }
  }

  Future<QuerySnapshot<Object?>> getData() async {
    CollectionReference slider = firestore.collection("slider");

    return await slider.get();
  }

  updateData(String id, bool activeSlider, String dashSlider,
      String gambarSlider) async {
    try {
      final sliderData = {
        "activeSlider": activeSlider,
        "dashSlider": dashSlider,
        "gambarSlider": gambarSlider
      };

      DocumentReference Slider = firestore.collection('slider').doc(id);
      await Slider.update(sliderData);

      Get.defaultDialog(title: 'Alert', middleText: 'berhasil menupdate data');
      Get.offNamed(Routes.SLIDER_DATA);
    } catch (e) {
      Get.defaultDialog(title: 'Alert', middleText: 'gagal menupdate data');
      log("=>");
      print(e);
    }
  }

  deleteData(String id) async {
    try {
      DocumentReference Slider = firestore.collection('slider').doc(id);
      await Slider.delete();
      Get.defaultDialog(
          title: "yakin Delete?",
          middleText: "Delete bro",
          confirm: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: bgRed),
            onPressed: () async {
              // await FirebaseAuth.instance.delete();
              Get.offAndToNamed(Routes.SLIDER_DATA);
              print("berhasil Delete");
            },
            child: Text("yes"),
          ),
          cancel: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: bgColeb5),
            onPressed: () => Get.back(),
            child: Text("No"),
          ));
      // return Get.offAllNamed(Routes.SLIDER_DATA);
    } catch (e) {
      Get.defaultDialog(title: 'Alert', middleText: 'gagal mendelete data');
      print(e);
    }
  }
}
