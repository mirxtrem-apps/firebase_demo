import 'package:firebase_demo/app/data/controllers/user_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final usuarioCtrl = Get.find<UserController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: controller.logout,
            icon: Icon(
              Icons.exit_to_app,
            ),
          )
        ],
      ),
      body: Center(
        child: Text(
          '${usuarioCtrl.usuario.value?.nombre}',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
