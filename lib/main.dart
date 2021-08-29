import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_core_project/feature/home/binding/home_binding.dart';
import 'package:getx_core_project/service/api_base_helper.dart';
import 'package:getx_core_project/utils/routes/app_pages.dart';
import 'package:getx_core_project/utils/routes/app_routes.dart';

import 'feature/home/view/home_page.dart';

void main() {
  Get.put<ApiBaseHelper>(ApiBaseHelper());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Core Project",
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: AppPages.routes,
      initialRoute: Routes.HOME,
    );
  }
}
