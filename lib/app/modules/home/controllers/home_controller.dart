import 'package:firebase_demo/app/data/services/auth_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final authService = Get.find<AuthService>();
  void logout() => authService.logout();
}
