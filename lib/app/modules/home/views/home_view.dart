import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          height: tinggi * 0.13,
          decoration: BoxDecoration(color: bgNav),
          padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                width: lebar * 0.43,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Kaos Kobo Kanaeru",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: border),
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
              Container(
                width: lebar * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.mail_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                    Image.asset("/image/shopping-cart 1.png"),
                    Image.asset("/image/Group 19.png"),
                    Image.asset("/image/menu 1.png")
                  ],
                ),
              )
            ],
          )),
    );
  }
}
