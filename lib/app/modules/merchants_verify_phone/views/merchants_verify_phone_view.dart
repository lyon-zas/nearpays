import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/merchants_verify_phone_controller.dart';

class MerchantsVerifyPhoneView extends GetView<MerchantsVerifyPhoneController> {
  const MerchantsVerifyPhoneView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MerchantsVerifyPhoneView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MerchantsVerifyPhoneView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
