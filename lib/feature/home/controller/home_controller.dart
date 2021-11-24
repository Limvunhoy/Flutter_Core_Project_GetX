// import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:getx_core_project/model/user_model/user_response.dart';
import 'package:getx_core_project/service/api_base_helper.dart';
import 'package:getx_core_project/service/user/user_service.dart';

class HomeController extends GetxController {
  final ApiBaseHelper _api = Get.find<ApiBaseHelper>();

  final UserService _userService = UserService();

  HomeController() {
    // getUsers();
    // fetchUsers();
  }

  RxBool isLoading = false.obs;
  RxList<UserResponse> users = RxList();

  fetchUsers() async {
    _showLoading();

    try {
      users.value = await _userService.fetchUser();
      _hideLoading();
    } catch (e) {
      print("Failed to get users $e");
    }
  }

  // Future<List<UserResponse>> getUsers() async {
  //   _showLoading();
  //   final response = await _api.get("/users");
  //   if (response.statusCode == 200) {
  //     var userList = response.data as List;
  //     _hideLoading();
  //     users = userList.map((e) => UserResponse.fromJson(e)).toList().obs;
  //     return users;
  //   } else {
  //     _hideLoading();
  //     return users;
  //   }
  // }

  _showLoading() {
    isLoading.toggle();
  }

  _hideLoading() {
    isLoading.toggle();
  }
}
