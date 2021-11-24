import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_core_project/feature/home/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
          ),
          child: Text(
            "Login",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      // body: Obx(
      //   () {
      //     return controller.isLoading.isTrue
      //         ? Center(
      //             child: CircularProgressIndicator(),
      //           )
      //         : ListView.builder(
      //             itemCount: controller.users.length,
      //             itemBuilder: (context, index) {
      //               return Text(
      //                   "Username: ${controller.users[index].username}");
      //             });
      //   },
      // ),
    );
  }
}
