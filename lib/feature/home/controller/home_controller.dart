// import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:getx_core_project/model/user_model/user_response.dart';
import 'package:getx_core_project/service/api_base_helper.dart';
import 'package:dio/dio.dart';

class HomeController extends GetxController {
  final ApiBaseHelper _api = Get.find<ApiBaseHelper>();

  HomeController() {
    getUsers();
  }

  RxBool isLoading = false.obs;
  RxList<UserResponse> users = RxList();

  Future<List<UserResponse>> getUsers() async {
    _showLoading();
    final response = await _api.getHTTP("/users");
    if (response.statusCode == 200) {
      var userList = response.data as List;
      _hideLoading();
      users = userList.map((e) => UserResponse.fromJson(e)).toList().obs;
      return users;
    } else {
      _hideLoading();
      return users;
    }
  }

  _showLoading() {
    isLoading.toggle();
  }

  _hideLoading() {
    isLoading.toggle();
  }
}
