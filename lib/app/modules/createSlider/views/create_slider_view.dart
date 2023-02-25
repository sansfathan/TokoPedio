// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/controllers/slider_controller.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/create_slider_controller.dart';

class CreateSliderView extends GetView<CreateSliderController> {
  final sliderC = Get.put(SliderController());
  final controller = Get.put(CreateSliderController());
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Obx(() => SafeArea(
            child: Scaffold(
          body: SingleChildScrollView(
              child: Container(
            child: Column(
              children: [
                Container(
                    width: lebar,
                    height: 60,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [bgLogin, bgNav]),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: Center(
                      child: Text(
                        "👉 Create Slider 👈",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 50),
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Column(
                      children: [
                        ElevatedButton(onPressed: () => controller.uploadGambar(), child: Text("Upload Gambar")),
                        CustomInput(
                            controller: controller.deskripsiSlider,
                            label: 'Deskripsi Slider',
                            hint: 'Masukkan deskripsi',
                            obscure: false),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "active Slider",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Switch(
                                      value: controller.active.value,
                                      onChanged: (value) =>
                                          controller.changeActivation()),
                                ],
                              ),
                              Text(
                                controller.active.value.toString(),
                                style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        controller.active.value ? bgNav : bgRed,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  margin: EdgeInsets.only(top: 40),
                  child: InkWell(
                      onTap: () {
                        sliderC.addData(
                            controller.active.value,
                            controller.deskripsiSlider.text,
                            controller.gambarSlider.text);
                      },
                      child: Container(
                        width: lebar,
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: bgNav),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Buat Slider',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      )),
                )
              ],
            ),
          )),
        )));
  }
}

Widget CustomInput({label, controller, obscure, hint, icon}) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(bottom: 5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        ),
      ),
      Container(
        child: TextFormField(
            controller: controller,
            obscureText: obscure,
            decoration: InputDecoration(
              labelStyle: const TextStyle(
                fontFamily: "Poppins",
                color: Colors.black,
                fontSize: 19,
              ),
              hintText: hint,
              hintStyle: TextStyle(
                  fontFamily: "Poppins",
                  color: bgPolos1,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 18,
              ),
              suffixIcon: icon,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: bgPolos1, width: 1),
                gapPadding: 5,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 27, 27, 27), width: 1),
                gapPadding: 5,
              ),
            )),
      ),
    ],
  );
}
