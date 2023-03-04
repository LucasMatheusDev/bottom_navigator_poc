import 'package:bottom_navigator_poc/bindings.dart';
import 'package:bottom_navigator_poc/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(
        controller: FirstController(),
      ),
      initialRoute: '/first',
      getPages: [
        GetPage(
          name: '/first',
          page: () => FirstPage(
            controller: Get.find(),
          ),
          binding: FirstBinding(),
        ),
        GetPage(
          name: '/second',
          page: () => SecondPage(
            controller: Get.find(),
          ),
          binding: SecondBinding(),
        ),
        GetPage(
          name: '/third',
          page: () => ThirdPage(
            controller: Get.find(),
          ),
          binding: ThirdBinding(),
        ),
        GetPage(
          name: '/fourth',
          page: () => FourthPage(
            controller: Get.find(),
          ),
          binding: FourthBinding(),
        ),
      ],
    );
  }
}
