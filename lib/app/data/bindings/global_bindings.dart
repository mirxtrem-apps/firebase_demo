import 'package:firebase_demo/app/data/controllers/user_controller.dart';
import 'package:firebase_demo/app/data/services/auth_service.dart';
import 'package:get/get.dart';

class GlobalBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<UserController>(UserController());
    Get.lazyPut<AuthService>(() => AuthService());
  }
}
