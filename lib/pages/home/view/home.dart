
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
                  () => Text(
                "${homeController.count}",
                style: const TextStyle(fontSize: 24),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  fixedSize: Size.fromWidth(100),
                  padding: EdgeInsets.all(10)
              ),
              child: Text("Increment",style: const TextStyle(color: Colors.white),),
              onPressed: (){
                // Get.toNamed("/detail");
                // print(apiService.fetchTextFromApi());
                homeController.increment();
              },
            ),

            FlatButton(
              onPressed: () {
                // Get.defaultDialog(title: "This is dialog");
                Get.snackbar("Welcome", "Lets go to next", snackPosition: SnackPosition.BOTTOM);
                Get.toNamed("/detail");
              },
              child: const Text("Go to detail"),
              color: Colors.red,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}