import 'package:firebase_demo/app/data/services/auth_service.dart';
import 'package:firebase_demo/app/data/services/users_service.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(
        usersService: UsersService(),
      ),
    );
  }
}
