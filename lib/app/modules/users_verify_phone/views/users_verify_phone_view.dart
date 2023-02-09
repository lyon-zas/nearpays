import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/users_verify_phone_controller.dart';

class UsersVerifyPhoneView extends GetView<UsersVerifyPhoneController> {
  const UsersVerifyPhoneView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UsersVerifyPhoneView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'UsersVerifyPhoneView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
