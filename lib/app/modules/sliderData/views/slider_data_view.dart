import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/controllers/slider_controller.dart';
import 'package:tokopedia/config/warna.dart';

import '../../../routes/app_pages.dart';
import '../controllers/slider_data_controller.dart';

class SliderDataView extends GetView<SliderDataController> {
  final sliderC = Get.put(SliderController());
  final sliderC2 = Get.put(SliderDataController());

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
          future: sliderC.getData(),
          builder: (context, Snapshot) {
            if (Snapshot.connectionState == ConnectionState.done) {
              var listData = Snapshot.data!.docs;
              return ListView.builder(
                  itemCount: listData.length,
                  itemBuilder: (context, index) => ListTile(
                        onTap: () => Get.toNamed(Routes.UPDATE_SLIDER,
                            arguments: listData[index]),
                        onLongPress: () =>
                            sliderC.deleteData(listData[index].id),
                        title: Text((listData[index].data()
                            as Map<String, dynamic>)['dashSlider']),
                        subtitle: Text(
                          (listData[index].data()
                                  as Map<String, dynamic>)['activeSlider']
                              .toString(),
                          style: TextStyle(
                              fontSize: 16,
                              color: (listData[index].data()
                                      as Map<String, dynamic>)['activeSlider']
                                  ? bgNav
                                  : bgRed,
                              fontWeight: FontWeight.w500),
                        ),
                        leading: Container(
                          width: 45,
                          height: 50,
                          child: Image.network(
                              (listData[index].data()
                                  as Map<String, dynamic>)['gambarSlider'],
                              fit: BoxFit.contain),
                        ),
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
