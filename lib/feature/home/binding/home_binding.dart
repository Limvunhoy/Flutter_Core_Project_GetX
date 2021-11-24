import 'package:get/get.dart';
import 'package:getx_core_project/feature/home/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    print("Bind HomeController");
    Get.put<HomeController>(HomeController());
  }
}
