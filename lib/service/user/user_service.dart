import 'package:get/get.dart';
import 'package:getx_core_project/model/user_model/user_response.dart';
import 'package:getx_core_project/service/api_base_helper.dart';

class UserService {
  Future<List<UserResponse>> fetchUser() async {
    final ApiBaseHelper _apiBaseHelper = Get.find<ApiBaseHelper>();

    try {
      final response = await _apiBaseHelper.get("/user");

      if (response.statusCode == 200) {
        var userList = response.data as List;
        List<UserResponse> users =
            userList.map((e) => UserResponse.fromJson(e)).toList().obs;
        return users;
      }

      return [];
    } catch (e) {
      throw e;
    }
  }
}
