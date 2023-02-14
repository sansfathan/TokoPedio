import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: tinggi,
        padding: EdgeInsets.fromLTRB(20, 50, 30, 20),
        // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [bgLogin, bgLogin2])),
        child: Column(
          children: [
            Container(
              height: tinggi * 0.85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: lebar,
                    height: tinggi * 0.3,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Image.asset(
                      "image/sp.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 200,
                        child: Text(
                          "Let's Get Started",
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Connect with each other with chatting or calling. Enjoy safe and private texting",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 60,
                    decoration: BoxDecoration(),
                    child: MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        child: Text(
                          "Join Now",
                          style: TextStyle(color: bgLogin, fontSize: 20),
                        )),
                  ),
                  // SizedBox(
                  //   height: 70,
                  // ),
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Already have an account?",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )),
                      TextButton(
                          onPressed: () => Get.toNamed("/login"),
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
