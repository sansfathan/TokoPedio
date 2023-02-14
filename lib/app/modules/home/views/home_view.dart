// ignore_for_file: unnecessary_import

import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:tokopedia/app/controllers/auth_controller_controller.dart';
import 'package:tokopedia/config/warna.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final logOut = Get.put(AuthControllerController());
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
                height: tinggi * 0.16,
                decoration: BoxDecoration(color: bgNav),
                padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            right: 10,
                          ),
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
                              Image.asset("image/cart.png"),
                              Image.asset("image/Bell.png"),
                              InkWell(
                                  onTap: () => logOut.logOut(),
                                  child: Image.asset("image/Menu.png"))
                            ],
                          ),
                        ),

                        // CarouselSlider(items: items, options: options)
                      ],
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 10),
                width: lebar,
                height: tinggi * 0.15,
                // decoration: BoxDecoration(color: Colors.red),
                child: CarouselSlider(
                  options: CarouselOptions(
                      height: 400.0,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3)),
                  items: [
                    "image/Banner.png",
                    "image/Banner2.png",
                    "image/Banner3.png",
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: lebar,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Container(
                              child: Image.asset(i),
                            ));
                      },
                    );
                  }).toList(),
                )),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 30,
                runSpacing: 20,
                children: [
                  CustomMenu(
                    icon: 'image/menu/promo.png',
                    text: 'Promo',
                  ),
                  CustomMenu(
                    icon: 'image/menu/toserba.png',
                    text: 'Toserba',
                  ),
                  CustomMenu(
                    icon: 'image/menu/elektronik.png',
                    text: 'Elektronik',
                  ),
                  CustomMenu(
                    icon: 'image/menu/tagihan.png',
                    text: 'Top-Up & Tagihan',
                  ),
                  CustomMenu(
                    icon: 'image/menu/semua.png',
                    text: 'Lihat Semua',
                  ),
                  CustomMenu(
                    icon: 'image/menu/official.png',
                    text: 'Official Store',
                  ),
                  CustomMenu(
                    icon: 'image/menu/play.png',
                    text: 'Live Shopping',
                  ),
                  CustomMenu(
                    icon: 'image/menu/seru.png',
                    text: 'Tokopedia Seru',
                  ),
                  CustomMenu(
                    icon: 'image/menu/cod.png',
                    text: 'Bayar di Tempat',
                  ),
                  CustomMenu(
                    icon: 'image/menu/indo.png',
                    text: 'Bangga Lokal',
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 1),
                    child: Text(
                      "Kejar Diskon Spesial",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: judul),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Text(
                              "Berakhir dalam",
                              style: TextStyle(
                                  color: judul2, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(2),
                            margin: EdgeInsets.only(left: 10),
                            width: 125,
                            height: 25,
                            decoration: BoxDecoration(
                                color: bgRed,
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Icon(
                                    Icons.access_time,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "00  :  15  :  12",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Lihat Semua",
                              style: TextStyle(color: bgNav),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 25),
              // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
              width: lebar,
              height: 320,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  bgBgan,
                  bgBgan2,
                ],
              )),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      // margin: EdgeInsets.only(right: 32),
                      child: Image.asset('image/Kejar.png'),
                    ),
                    Container(
                      // margin: EdgeInsets.only(left: 15),
                      // padding: EdgeInsets.fromLTRB(20, 10, 30, 20),

                      child: Row(
                        children: [
                          InkWell(
                            onTap: () => Get.toNamed(Routes.DETAIL),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(30, 10, 0, 10),
                              width: 200,
                              height: tinggi * 0.50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                                    // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
                                    width: 190,
                                    height: 160,
                                    child: Image.asset(
                                      "image/Masker.png",
                                      // fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                      10,
                                      10,
                                      0,
                                      0,
                                    ),
                                    child: Text(
                                      "Rp 1.000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(2),
                                        margin:
                                            EdgeInsets.fromLTRB(10, 5, 0, 0),
                                        width: 30,
                                        height: 20,
                                        decoration:
                                            BoxDecoration(color: bgRedB),
                                        child: Text(
                                          "92%",
                                          style: TextStyle(color: bgRed),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                        child: Text(
                                          "Rp 12.546",
                                          style: TextStyle(
                                              color: subjudul,
                                              decoration:
                                                  TextDecoration.lineThrough),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(10, 5, 0, 0),
                                        child: Image.asset("image/verify.png"),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                        child: Text(
                                          "Kab. Tangerang",
                                          style: TextStyle(color: subjudul),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    // margin: EdgeInsets.only(bottom: 10, top: 10),
                                    // padding: EdgeInsets.fromLTRB(left, top, right, bottom),

                                    margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
                                    child: StepProgressIndicator(
                                      totalSteps: 100,
                                      currentStep: 80,
                                      size: 5,
                                      padding: 0,
                                      selectedColor: bgRed,
                                      unselectedColor: Color(0xffeeeeee),
                                      roundedEdges: Radius.circular(2),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15, left: 10),
                                    child: Text(
                                      "Segera Habis",
                                      style: TextStyle(color: subjudul),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
                            width: 160,
                            height: tinggi * 0.50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 120,
                                  child: Image.asset(
                                    "image/Indomie.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                    10,
                                    10,
                                    0,
                                    0,
                                  ),
                                  child: Text(
                                    "Rp 103.000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(2),
                                      margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                      width: 30,
                                      height: 20,
                                      decoration: BoxDecoration(color: bgRedB),
                                      child: Text(
                                        "92%",
                                        style: TextStyle(color: bgRed),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                      child: Text(
                                        "Rp 12.546",
                                        style: TextStyle(
                                            color: subjudul,
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                      child: Image.asset("image/verify.png"),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                                      // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
                                      child: Text(
                                        "Kab. Tangerang",
                                        style: TextStyle(color: subjudul),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  // margin: EdgeInsets.only(bottom: 10, top: 10),
                                  margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                                  child: StepProgressIndicator(
                                    totalSteps: 100,
                                    currentStep: 30,
                                    size: 5,
                                    padding: 0,
                                    selectedColor: bgRed,
                                    unselectedColor: Color(0xffeeeeee),
                                    roundedEdges: Radius.circular(2),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 15, left: 10),
                                  child: Text(
                                    "Tersedia",
                                    style: TextStyle(color: subjudul),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 0),
                  child: Text(
                    "Pilih Promo Hari ini",
                    style: TextStyle(
                        color: judul,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Lihat Semua",
                        style: TextStyle(color: bgNav),
                      )),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    // margin: EdgeInsets.only(left: 5),
                    width: lebar * 0.30,
                    height: tinggi * 0.35,
                    child: Image.asset(
                      "image/BannerB1.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    width: lebar * 0.30,
                    height: tinggi * 0.35,
                    child: Image.asset(
                      "image/BannerB2.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    width: lebar * 0.30,
                    height: tinggi * 0.35,
                    child: Image.asset(
                      "image/BannerB3.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    width: lebar * 0.30,
                    height: tinggi * 0.35,
                    child: Image.asset(
                      "image/BannerB1.png",
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: lebar * 1.50,
              child: Divider(
                color: subjudul,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
                          width: 160,
                          height: tinggi * 0.38,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: subjudul,
                                  blurRadius: 4,
                                  offset: Offset(0, 2), // Shadow position
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 160,
                                height: tinggi * 0.17,
                                child: Image.asset(
                                  "image/mouse1.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                  10,
                                  10,
                                  0,
                                  0,
                                ),
                                child: Text(
                                  "Logitech G603 Lightspeed ...",
                                  style: TextStyle(color: judul, fontSize: 20),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                  10,
                                  10,
                                  0,
                                  0,
                                ),
                                child: Text(
                                  "Rp 609.000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    width: 30,
                                    height: 20,
                                    decoration: BoxDecoration(color: bgRedB),
                                    child: Text(
                                      "42%",
                                      style: TextStyle(color: bgRed),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                    child: Text(
                                      "Rp 1.000.000",
                                      style: TextStyle(
                                          color: subjudul,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 5),
                                          child: Image.asset("image/king.png"),
                                        ),
                                        Text(
                                          "Kab. Bandung",
                                          style: TextStyle(
                                              color: subjudul,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Image.asset("image/star.png"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                    child: Text(
                                      "4.8",
                                      style: TextStyle(
                                          color: judul2, fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                    child: Text(
                                      "|",
                                      style: TextStyle(
                                          color: judul2, fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                    child: Text(
                                      "Terjual 312",
                                      style: TextStyle(
                                          color: judul2, fontSize: 15),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
                          width: 160,
                          height: tinggi * 0.38,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: subjudul,
                                  blurRadius: 4,
                                  offset: Offset(0, 2), // Shadow position
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 160,
                                height: tinggi * 0.17,
                                child: Image.asset(
                                  "image/mouse2.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                  10,
                                  10,
                                  0,
                                  0,
                                ),
                                child: Text(
                                  "Logitech G603 Lightspeed ...",
                                  style: TextStyle(color: judul, fontSize: 20),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                  10,
                                  10,
                                  0,
                                  0,
                                ),
                                child: Text(
                                  "Rp 204.000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    width: 30,
                                    height: 20,
                                    decoration: BoxDecoration(color: bgRedB),
                                    child: Text(
                                      "46%",
                                      style: TextStyle(color: bgRed),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                    child: Text(
                                      "Rp 370.000",
                                      style: TextStyle(
                                          color: subjudul,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 5),
                                          child: Image.asset("image/king.png"),
                                        ),
                                        Text(
                                          "Kab. Bandung",
                                          style: TextStyle(
                                              color: subjudul,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Image.asset("image/star.png"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                    child: Text(
                                      "4.8",
                                      style: TextStyle(
                                          color: judul2, fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                    child: Text(
                                      "|",
                                      style: TextStyle(
                                          color: judul2, fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                    child: Text(
                                      "Terjual 6rb",
                                      style: TextStyle(
                                          color: judul2, fontSize: 15),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
                          width: 160,
                          height: tinggi * 0.38,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: subjudul,
                                  blurRadius: 4,
                                  offset: Offset(0, 2), // Shadow position
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 160,
                                height: tinggi * 0.17,
                                child: Image.asset(
                                  "image/mouse3.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                  10,
                                  10,
                                  0,
                                  0,
                                ),
                                child: Text(
                                  "Logitech G603 Lightspeed ...",
                                  style: TextStyle(color: judul, fontSize: 20),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                  10,
                                  10,
                                  0,
                                  0,
                                ),
                                child: Text(
                                  "Rp 609.000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    width: 30,
                                    height: 20,
                                    decoration: BoxDecoration(color: bgRedB),
                                    child: Text(
                                      "32%",
                                      style: TextStyle(color: bgRed),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                    child: Text(
                                      "Rp 349.000",
                                      style: TextStyle(
                                          color: subjudul,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 5),
                                          child: Image.asset("image/king.png"),
                                        ),
                                        Text(
                                          "Kab. Bandung",
                                          style: TextStyle(
                                              color: subjudul,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Image.asset("image/star.png"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                    child: Text(
                                      "4.8",
                                      style: TextStyle(
                                          color: judul2, fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                    child: Text(
                                      "|",
                                      style: TextStyle(
                                          color: judul2, fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                    child: Text(
                                      "Terjual 312",
                                      style: TextStyle(
                                          color: judul2, fontSize: 15),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 15),
              width: lebar,
              height: 10,
              decoration: BoxDecoration(
                color: subjudul,
                // boxShadow: [],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    pilihan(
                        lebar, bgColeb1, bgColeb2, 'For rizqi', Colors.white),
                    pilihan(lebar, bgColeb3, bgColeb4, 'Special Discount',
                        Colors.transparent),
                    pilihan(lebar, bgColeb5, bgColeb6, 'Aktivitasmu',
                        Colors.transparent),
                    pilihan(lebar, bgColeb7, bgColeb8, 'Kesukaanmu',
                        Colors.transparent),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: tinggi * 0.02,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Wrap(
                spacing: 0,
                runSpacing: 0,
                children: [
                  produk(
                      lebar,
                      lebar * 0.35,
                      tinggi,
                      'image/mouse.png',
                      'Rp 699.000',
                      '12%',
                      'Rp 790.000',
                      'image/king.png',
                      'Jakarta Pusat'),
                  produk(
                      lebar,
                      lebar * 0.35,
                      tinggi,
                      'image/monitor.png',
                      'Rp 699.000',
                      '12%',
                      'Rp 790.000',
                      'image/king.png',
                      'Jakarta Pusat'),
                  produk(
                      lebar,
                      lebar * 0.35,
                      tinggi,
                      'image/Saklar.png',
                      'Rp 699.000',
                      '12%',
                      'Rp 790.000',
                      'image/king.png',
                      'Jakarta Pusat'),
                  produk(
                      lebar,
                      lebar * 0.35,
                      tinggi,
                      'image/mouseH.png',
                      'Rp 699.000',
                      '12%',
                      'Rp 790.000',
                      'image/king.png',
                      'Jakarta Pusat'),
                ],
              ),
            ),
            SizedBox(
              height: tinggi * 0.02,
            ),
            Container(
              width: lebar,
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(width: 1, color: judul2)),
              child: Text(
                'Lihat Selebihnya',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: tinggi * 0.02,
            ),
          ],
        ),
      ),
    ));
  }
}

Widget CustomMenu({icon, text}) {
  return Container(
    width: 60,
    child: Column(
      children: [
        Container(child: Image.asset(icon)),
        Container(
            margin: EdgeInsets.only(top: 7),
            child: Text(
              text,
              textAlign: TextAlign.center,
            ))
      ],
    ),
  );
}

Widget pilihan(lebar, warna, warna2, judul, warna3) {
  return Container(
    width: lebar * 0.3,
    height: 66,
    padding: EdgeInsets.all(12),
    margin: EdgeInsets.only(right: 12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topRight,
        colors: [warna, warna2],
      ),
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        width: 25,
        height: 3,
        margin: EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2), color: warna3),
      ),
      Text(
        judul,
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
      )
    ]),
  );
}

Widget produk(lebar, double lebar2, tinggi, gambar, harga, diskonPercen,
    jumlahDiskon, penjual, asal) {
  return Container(
    height: tinggi * 0.4,
    width: lebar2 * 1.25,
    margin: EdgeInsets.fromLTRB(0, 10, 15, 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: subjudul,
          blurRadius: 8,
          offset: Offset(0, 4),
        )
      ],
    ),
    child: Column(
      children: [
        Container(
          width: lebar,
          height: tinggi * 0.22,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            image: DecorationImage(
                image: AssetImage(
                  gambar,
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          width: lebar,
          height: tinggi * 0.160,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                harga,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: tinggi * 0.006,
              ),
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 20,
                    margin: EdgeInsets.only(right: 6),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      color: bgRedB,
                    ),
                    child: Text(
                      diskonPercen,
                      style: TextStyle(
                          color: bgRed,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                  ),
                  Text(
                    jumlahDiskon,
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 15,
                        color: subjudul),
                  )
                ],
              ),
              SizedBox(
                height: tinggi * 0.006,
              ),
              Row(
                children: [
                  Image.asset(
                    penjual,
                    width: 20,
                  ),
                  Text(
                    asal,
                    style: TextStyle(
                      color: subjudul,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: tinggi * 0.011,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 3),
                    child: Icon(
                      Icons.star,
                      color: star,
                      size: 14,
                    ),
                  ),
                  Text(
                    '4.8 | Terjual 312',
                    style: TextStyle(color: subjudul, fontSize: 15),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
