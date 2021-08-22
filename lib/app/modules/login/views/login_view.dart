import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginView'),
        centerTitle: true,
      ),
      body: Form(
        key: controller.formKey,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              TextFormField(
                controller: controller.emailCtrl,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) => GetUtils.isEmail(value!)
                    ? null
                    : "Ingrese un correo valido",
              ),
              TextFormField(
                controller: controller.passCtrl,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) => GetUtils.isGreaterThan(6, value!.length)
                    ? "Debe tener 6 digitos"
                    : null,
              ),
              ElevatedButton(
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: controller.login,
              )
            ],
          ),
        ),
      ),
    );
  }
}
