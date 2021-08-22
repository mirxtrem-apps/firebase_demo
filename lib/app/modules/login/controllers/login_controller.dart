import 'package:firebase_demo/app/data/controllers/user_controller.dart';
import 'package:firebase_demo/app/data/models/usuario.dart';
import 'package:firebase_demo/app/routes/app_pages.dart';

import '../../../data/services/auth_service.dart';
import '../../../data/services/users_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final authService = Get.find<AuthService>();
  final userCtrl = Get.find<UserController>();

  final UsersService usersService;
  LoginController({required this.usersService});

  TextEditingController emailCtrl = new TextEditingController();
  TextEditingController passCtrl = new TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  login() async {
    if (formKey.currentState!.validate()) {
      final user = await authService.login(
          email: emailCtrl.text, password: passCtrl.text);
      if (user is User) {
        usersService
            .addUser(user.uid)
            .then((value) => Get.toNamed(Routes.HOME));
        final docSnap = await usersService.getUser(user.uid);
        userCtrl.usuario.value = docSnap.data();
      }
    }
  }
}
