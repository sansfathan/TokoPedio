import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
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
                padding: EdgeInsets.fromLTRB(10, 50, 10, 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          // margin: EdgeInsets.fromLTRB(left, top, right, bottom),
                          child: Icon(Icons.arrow_back),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10, left: 15),
                          width: lebar * 0.45,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                fillColor: Colors.white,
                                filled: true,
                                labelText: "Cari Parfum Kobo Kanaeru",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: border),
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 0),
                          width: lebar * 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.share_outlined,
                                size: 25,
                              ),
                              Image.asset(
                                "image/cart.png",
                                color: Colors.black,
                                width: 40,
                              ),
                              Image.asset(
                                "image/Menu.png",
                                color: Colors.black,
                                width: 40,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: lebar,
                child: Image.asset(
                  "image/Parfum.png",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rp370.000",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: Image.asset("image/heart.png"),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Text(
                  "Mine. Perfumery ETHEREAL - 50ml Eau De Parfum",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  width: lebar * 2,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        // margin: EdgeInsets.fromLTRB(left, top, right, bottom),
                        child: Text(
                          "Terjual 250+",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.fromLTRB(15, 0, 8, 0),
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: subjudul)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              // margin: EdgeInsets.fromLTRB(3, 0, 2, 0),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    child: Image.asset("image/star.png"),
                                  ),
                                  Text(
                                    "4.9 (320)",
                                    style: TextStyle(fontSize: 15),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 8, 0),
                        width: lebar * 0.29,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: subjudul)),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                margin: EdgeInsets.fromLTRB(8, 0, 2, 0),
                                child: Text("Foto Pembeli (50)",
                                    style: TextStyle(fontSize: 15)))
                          ],
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.fromLTRB(3, 0, 8, 0),
                        width: lebar * 0.25,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: subjudul)),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                margin: EdgeInsets.fromLTRB(25, 0, 2, 0),
                                child: Text("Diskusi (25)",
                                    style: TextStyle(fontSize: 15)))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: lebar,
                height: 30,
                decoration: BoxDecoration(color: subjudul),
              ),
              Container(
                // margin: EdgeInsets.fromLTRB(left, top, right, bottom),
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            "Detail Produk",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // margin: EdgeInsets.fromLTRB(left, top, right, bottom),
                            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: Text(
                              "Berat Satuan",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            child: Text(
                              "200g",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      width: lebar,
                      child: Divider(
                        color: subjudul,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // margin: EdgeInsets.fromLTRB(left, top, right, bottom),
                            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: Text(
                              "Etalase",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            child: Text(
                              "Mine Private Collection",
                              style: TextStyle(fontSize: 20, color: bgNav),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      width: lebar,
                      child: Divider(
                        color: subjudul,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "Deskripsi Produk",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: lebar,
                      child: Text(
                        "Mine. ETHEREAL Eau De Parfum 50mi glass perfume bottle in hard box packaging • ETHEREAL • With facets that highlight a side ...",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Baca Selengkapnya",
                              style: TextStyle(color: bgNav, fontSize: 15),
                            )),
                      ],
                    ),
                    Container(
                        width: lebar,
                        child: Divider(
                          color: subjudul,
                        )),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                      // margin: EdgeInsets.fromLTRB(left, top, right, bottom),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // margin: EdgeInsets.only(r: 20),
                            child: Image.asset("image/parfum2.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 50, left: 20),
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Image.asset("image/verify.png"),
                                      Text("Mine. Parfumery")
                                    ],
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Text("Online "),
                                        Text(
                                          "23 jam lalu",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: bgColeb9),
                                        )
                                      ],
                                    )),
                                Container(child: Text("Kota Tanggerang")),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 15),
                            width: lebar * 0.20,
                            height: tinggi * 0.05,
                            decoration: BoxDecoration(
                                border: Border.all(color: bgNav),
                                borderRadius: BorderRadius.circular(10)),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Follow",
                                  style: TextStyle(color: bgNav),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: lebar,
                height: 10,
                decoration: BoxDecoration(color: subjudul),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Lainnya di toko ini",
                      style: TextStyle(fontSize: 20),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Lihat Semua",
                          style: TextStyle(color: bgNav, fontSize: 15),
                        ))
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
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
                              "image/parfum4.png",
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
                              "Mine. Perfumery FLORAISON ...",
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
                              "Rp 370.000",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(2),
                            margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                            width: 70,
                            height: 20,
                            decoration:
                                BoxDecoration(color: Color(0xA103A7591A)),
                            child: Text(
                              "Cashback",
                              style: TextStyle(color: bgNav),
                            ),
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
                                      "Kota. Tangerang",
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
                                    borderRadius: BorderRadius.circular(15)),
                                child: Image.asset("image/star.png"),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                child: Text(
                                  "4.8",
                                  style: TextStyle(color: judul2, fontSize: 15),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                child: Text(
                                  "|",
                                  style: TextStyle(color: judul2, fontSize: 15),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                child: Text(
                                  "Terjual 312",
                                  style: TextStyle(color: judul2, fontSize: 15),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
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
                              "image/parfum5.png",
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
                              "Mine. Perfumery FLORAISON ...",
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
                              "Rp 370.000",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(2),
                            margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                            width: 70,
                            height: 20,
                            decoration:
                                BoxDecoration(color: Color(0xA103A7591A)),
                            child: Text(
                              "Cashback",
                              style: TextStyle(color: bgNav),
                            ),
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
                                      "Kota. Tangerang",
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
                                    borderRadius: BorderRadius.circular(15)),
                                child: Image.asset("image/star.png"),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                child: Text(
                                  "4.9",
                                  style: TextStyle(color: judul2, fontSize: 15),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                child: Text(
                                  "|",
                                  style: TextStyle(color: judul2, fontSize: 15),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                child: Text(
                                  "Terjual 150",
                                  style: TextStyle(color: judul2, fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
                              "image/parfum6.png",
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
                              "Mine. Perfumery FLORAISON ...",
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
                              "Rp 370.000",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(2),
                            margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                            width: 70,
                            height: 20,
                            decoration:
                                BoxDecoration(color: Color(0xA103A7591A)),
                            child: Text(
                              "Cashback",
                              style: TextStyle(color: bgNav),
                            ),
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
                                      "Kota. Tangerang",
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
                                    borderRadius: BorderRadius.circular(15)),
                                child: Image.asset("image/star.png"),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                child: Text(
                                  "5.0",
                                  style: TextStyle(color: judul2, fontSize: 15),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                child: Text(
                                  "|",
                                  style: TextStyle(color: judul2, fontSize: 15),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 6, 0, 0),
                                child: Text(
                                  "Terjual 312",
                                  style: TextStyle(color: judul2, fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: lebar,
                height: 10,
                decoration: BoxDecoration(color: subjudul),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 10, left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Ulasan pembeli",
                          style: TextStyle(fontSize: 20),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Lihat Semua",
                              style: TextStyle(color: bgNav, fontSize: 15),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 5, 10, 0),
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      // margin: EdgeInsets.fromLTRB(left, top, right, bottom),
                                      child: Row(
                                        children: [
                                          Container(
                                              child: Icon(
                                            Icons.star,
                                            color: star,
                                            size: 30,
                                          )),
                                          Text(
                                            "4.9",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                              margin: EdgeInsets.only(left: 10),
                                              child: Text(
                                                  "320 rating ∙ 102 ulasan"))
                                        ],
                                      )),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                margin: EdgeInsets.only(),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    review("image/menu/parfume1.png", ""),
                                    review("image/menu/parfume2.png", ""),
                                    review("image/menu/parfume3.png", ""),
                                    review("image/menu/parfume4.png", ""),
                                    review("image/menu/parfume5.png", "+61"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                width: lebar,
                child: Divider(
                  color: subjudul,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 25, top: 10),
                        width: 60,
                        height: 60,
                        child: Image.asset("image/orang.png"),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Zain Ekstrom Bothman",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "31 ulasan lengkap ∙ 17 terbantu",
                              style: TextStyle(fontSize: 15, color: subjudul),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 29, top: 8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 20,
                            height: 20,
                            child: Icon(
                              Icons.star,
                              size: 25,
                              color: star,
                            )),
                        Container(
                            margin: EdgeInsets.only(left: 3),
                            width: 20,
                            height: 20,
                            child: Icon(
                              Icons.star,
                              size: 25,
                              color: star,
                            )),
                        Container(
                            margin: EdgeInsets.only(left: 3),
                            width: 20,
                            height: 20,
                            child: Icon(
                              Icons.star,
                              size: 25,
                              color: star,
                            )),
                        Container(
                            margin: EdgeInsets.only(left: 3),
                            width: 20,
                            height: 20,
                            child: Icon(
                              Icons.star,
                              size: 25,
                              color: star,
                            )),
                        Container(
                            margin: EdgeInsets.only(left: 3),
                            width: 20,
                            height: 20,
                            child: Icon(
                              Icons.star,
                              size: 25,
                              color: star,
                            )),
                        Container(
                            margin: EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              "10 bulan lalu",
                              style: TextStyle(color: subjudul, fontSize: 17),
                            ))
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(right: lebar * 0.17, top: 10),
                            width: lebar * 0.68,
                            child: Text(
                              "saya selalu tertarik dengan produk lokal, buat sayaaroma nomor 2 karena subyektif, Kemasan nomor selanjutnya, tapi yang perlu di",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          // Container(
                          //   child:
                          // ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Baca Selengkapnya",
                                style: TextStyle(color: bgNav, fontSize: 15),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: lebar,
                height: tinggi * 0.008,
                decoration: BoxDecoration(color: subjudul),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Diskusi",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Lihat Semua",
                          style: TextStyle(color: bgNav),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget review(gambar, judul) {
  return Container(
    width: 70,
    height: 70,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      image: DecorationImage(image: AssetImage(gambar)),
    ),
    child: Text(
      judul,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16),
    ),
  );
}
