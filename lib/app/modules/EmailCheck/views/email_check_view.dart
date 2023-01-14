// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/email_check_controller.dart';

class EmailCheckView extends GetView<EmailCheckController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: tinggi,
        padding: EdgeInsets.fromLTRB(20, 90, 30, 20),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: bgBang, borderRadius: BorderRadius.circular(8)),
                child: Image.asset(
                  "image/Email.png",
                  fit: BoxFit.none,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 35),
                child: Text(
                  "Check Your Email",
                  style: TextStyle(
                      fontSize: 25, color: judul, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 200,
                margin: EdgeInsets.only(top: 35),
                child: Text(
                  "We have sent a password recover instructions to your email.",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 35),
                width: MediaQuery.of(context).size.width * 0.5,
                height: 60,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: MaterialButton(
                    onPressed: () {},
                    color: bgLogin2,
                    child: Text(
                      "Open Email App",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Skip, I’ll confirm later',
                    style: TextStyle(
                      color: subjudul,
                      decoration: TextDecoration.underline,
                    ),
                  )),
              Container(
                child: Text(
                  "Did not receive the email ? Check your spam filter, or ",
                  style: TextStyle(),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                child: Text(
                  "try another email address",
                  style: TextStyle(color: bgLogin2),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
