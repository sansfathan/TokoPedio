// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/config/warna.dart';

import '../../../controllers/auth_controller_controller.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_with_phone_controller.dart';

class LoginWithPhoneView extends GetView<LoginWithPhoneController> {
  final authC = Get.put(AuthControllerController());
  // final phone = Get.put(ver());
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: tinggi,
        padding: EdgeInsets.fromLTRB(20, 50, 30, 20),
        child: Column(
          children: [
            Container(
              height: tinggi * 0.85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Login With phone number",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 30),
                    width: 350,
                    child: Text(
                      "Login with your own beautiful phone number",
                      style: TextStyle(color: subjudul, fontSize: 15),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "Phone Number",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10, top: 25),
                    child: TextField(
                        controller: controller.phone,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "Enter Your Mobile Phone",
                            prefixIcon: Container(
                              width: lebar * 0.13,
                              child: Row(
                                children: [
                                  Container(
                                      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                      child: Text(
                                        "+62",
                                        style: TextStyle(
                                            fontSize: 17, color: subjudul),
                                      )),
                                  Container(
                                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                      height: tinggi * 0.04,
                                      child: VerticalDivider(
                                        color: subjudul,
                                        width: 2,
                                      ))
                                ],
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    width: lebar,
                    height: 60,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(backgroundColor: bgLogin2),
                        onPressed: () =>
                            authC.verifyPhone(controller.phone.text),
                        child: Text(
                          "Send OTP",
                          style: TextStyle(fontSize: 18),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
