import 'package:get/get.dart';

import '../controllers/merchants_verify_phone_controller.dart';

class MerchantsVerifyPhoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MerchantsVerifyPhoneController>(
      () => MerchantsVerifyPhoneController(),
    );
  }
}
