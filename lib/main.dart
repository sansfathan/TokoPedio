import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/controllers/auth_controller_controller.dart';

import 'app/routes/app_pages.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final controller = Get.put(AuthControllerController());
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: controller.streamAuthStatus(),
        builder: (context, snapshot) {
          print(snapshot.connectionState);
          if (snapshot.connectionState == ConnectionState.active) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Application",
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes,
            );
          } else {
            return MaterialApp(
              home: Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          }
        });
  }
}
