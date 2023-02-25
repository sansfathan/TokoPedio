// ignore_for_file: unused_import, unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/controllers/produk_controller.dart';
import 'package:tokopedia/app/controllers/slider_controller.dart';
import 'package:tokopedia/config/warna.dart';

import '../../../routes/app_pages.dart';
import '../controllers/produk_data_controller.dart';

class ProdukDataView extends GetView<ProdukDataController> {
  
  final produkC = Get.put(ProdukController());
  final produkC2 = Get.put(ProdukDataController());

  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Data'),
        centerTitle: true,
      ),
      body: FutureBuilder<QuerySnapshot<Object?>>(
          future: produkC.getData(),
          builder: (context, Snapshot) {
            if (Snapshot.connectionState == ConnectionState.done) {
              var listData = Snapshot.data!.docs;
              return ListView.builder(
                  itemCount: listData.length,
                  itemBuilder: (context, index) => ListTile(
                      ));
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.CREATE_SLIDER),
        child: Icon(Icons.add),
      ),
    );
  }
}
