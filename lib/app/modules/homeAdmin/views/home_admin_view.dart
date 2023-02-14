import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/config/warna.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_admin_controller.dart';

class HomeAdminView extends GetView<HomeAdminController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text('Slider'),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(10, 50, 10, 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Get.toNamed(Routes.SLIDER_DATA),
                    child: Container(
                      child: CustomMenu(
                          icon: 'image/menu/indo.png', text: 'Slider Data'),
                    ),
                  ),
                  Container(
                    child: CustomMenu(
                        icon: 'image/menu/semua.png', text: 'Slider'),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

Widget CustomMenu({icon, text}) {
  return Container(
    width: 80,
    child: Column(
      children: [
        Container(
            width: 50,
            height: 50,
            child: Image.asset(
              icon,
              fit: BoxFit.fill,
            )),
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
