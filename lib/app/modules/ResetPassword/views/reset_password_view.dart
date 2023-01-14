import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: tinggi,
        padding: EdgeInsets.fromLTRB(20, 50, 30, 20),
        decoration: BoxDecoration(),
        child: Column(
          children: [
            Container(
              height: tinggi * 0.85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Reset Password",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 30),
                    width: 290,
                    child: Text(
                      "Enter the email associated with your account and we'll send an email with instructions to reset your password.",
                      style: TextStyle(color: subjudul),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Email Address",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Enter Your Email",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: border),
                              borderRadius: BorderRadius.circular(5))),
                    ),
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
                        onPressed: () => Get.toNamed("/login"),
                        child: Text(
                          "Send Instructions",
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
