import 'package:get/get.dart';
import 'package:getx_core_project/view_model/home/home_view_model.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    print("Bind HomeController");
    Get.put<HomeController>(HomeController());
  }
}
