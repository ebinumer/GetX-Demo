import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get_x_test/pages/detail/view/detail.dart';
import 'package:get_x_test/pages/home/binding/home_binding.dart';

import 'pages/detail/binding/detail_binding.dart';
import 'pages/home/view/home.dart';



void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      getPages: [
        GetPage(name: "/home", page: ()=>HomeScreen(), binding: HomeBinding()),
        GetPage(name: "/detail", page: ()=>DetailScreen(), binding: DetailBinding()),
      ],
      initialRoute: "/home",
    );
  }
}