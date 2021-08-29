import 'package:get/route_manager.dart';
import 'package:getx_core_project/feature/home/binding/home_binding.dart';
import 'package:getx_core_project/feature/home/view/home_page.dart';
// import 'export.dart';
import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding())
  ];
}
