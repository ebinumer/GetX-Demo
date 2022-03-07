import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../services/api_service.dart';
import '../../home/controller/home_controller.dart';


class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final apiService = Get.find<ApiService>();
    final homeController = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Screen"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Get.back();
            print(homeController.count);
          },
        ),
      ),
    );
  }
}