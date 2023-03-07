// ignore_for_file: unused_import, duplicate_import
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:tokopedia/config/warna.dart';

import '../routes/app_pages.dart';

class ProdukController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseStorage storage = FirebaseStorage.instance;
  String url = '';
  File? path;

  addData(
      String barangTerjual,
      int diskon,
      String gambar,
      int harga,
      int hargaDiskon,
      String nama,
      String namaKota,
      String rating,
      bool statusToko,
      int stokBarang) async {
    CollectionReference produk = firestore.collection("produk");

    final produkData = {
      "barangTerjual": barangTerjual,
      "diskon": diskon,
      'gambar': gambar,
      'harga': harga,
      'hargaDiskon': hargaDiskon,
      'nama': nama,
      'namaKota': namaKota,
      'rating': rating,
      "statusToko": statusToko,
      "stokBarang": stokBarang
    };
    try {
      await produk.add(produkData).then((DocumentReference doc) =>
          Get.defaultDialog(
              title: "Alert", middleText: "Berhasil menambahkan data produk"));
      Get.toNamed(Routes.HOME_ADMIN);
    } catch (e) {
      Get.defaultDialog(
          title: "Alert", middleText: "Gagal menambahkan data produk");
    }
  }

  Future<QuerySnapshot<Object?>> getData() async {
    CollectionReference produk = firestore.collection("produk");

    return await produk.get();
  }

  // updateData(String id, bool activeSlider, String dashSlider,
  //     String gambarSlider) async {
  //   try {
  //     final sliderData = {
  //       "activeSlider": activeSlider,
  //       "dashSlider": dashSlider,
  //       "gambarSlider": gambarSlider
  //     };

  //     DocumentReference Slider = firestore.collection('slider').doc(id);
  //     await Slider.update(sliderData);

  //     Get.defaultDialog(title: 'Alert', middleText: 'berhasil menupdate data');
  //     Get.offNamed(Routes.SLIDER_DATA);
  //   } catch (e) {
  //     Get.defaultDialog(title: 'Alert', middleText: 'gagal menupdate data');
  //     log("=>");
  //     print(e);
  //   }
  // }

  // deleteData(String id) async {
  //   try {
  //     DocumentReference Slider = firestore.collection('slider').doc(id);
  //     await Slider.delete();
  //     Get.defaultDialog(
  //         title: "yakin Delete?",
  //         middleText: "Delete bro",
  //         confirm: ElevatedButton(
  //           style: ElevatedButton.styleFrom(backgroundColor: bgRed),
  //           onPressed: () async {
  //             // await FirebaseAuth.instance.delete();
  //             Get.offAndToNamed(Routes.SLIDER_DATA);
  //             print("berhasil Delete");
  //           },
  //           child: Text("yes"),
  //         ),
  //         cancel: ElevatedButton(
  //           style: ElevatedButton.styleFrom(backgroundColor: bgColeb5),
  //           onPressed: () => Get.back(),
  //           child: Text("No"),
  //         ));
  //     // return Get.offAllNamed(Routes.SLIDER_DATA);
  //   } catch (e) {
  //     Get.defaultDialog(title: 'Alert', middleText: 'gagal mendelete data');
  //     print(e);
  //   }
  // }

  // addPhoto() async {
  //   FilePickerResult? result = await FilePicker.platform.pickFiles();

  //   if (result != null) {
  //     File file = File(result.files.single.path!);
  //     String namaFile = result.files.first.name;
  //     url = namaFile;

  //     // try {
  //     await storage.ref("${namaFile}").putFile(file);
  //     final data = await storage.ref("${namaFile}").getDownloadURL();
  //     url = data;

  //     print("Success ======================================");
  //     print(url);

  //     return url;
  //     // } catch (e) {
  //     //   print("gagal upload ==============================================");
  //     // }
  //   } else {
  //     print("tidak mengirim filename ===================================");
  //   }

  filterData() async {
    final result = await firestore
        .collection('produk')
        // .where('harga', isLessThanOrEqualTo: 500200)
        // .orderBy('harga', descending: true)
        // .limitToLast(5)
        .where('flashSale', isEqualTo: true)
        .get();
    print(result.docs.length);
    print('*************************');

    if (result.docs.length > 0) {
      result.docs.forEach((element) {
        print(element.data());
      });
    } else {
      print("tidak ada data");
    }
  }
  
  Future<QuerySnapshot<Object?>> getDataDiskon() async {
    
    CollectionReference produk = firestore.collection("produk");

    return await produk.where('flashSale', isEqualTo: true).get();
  }
}
