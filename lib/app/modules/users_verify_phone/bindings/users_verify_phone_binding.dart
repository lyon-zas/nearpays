import 'package:get/get.dart';

import '../controllers/users_verify_phone_controller.dart';

class UsersVerifyPhoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UsersVerifyPhoneController>(
      () => UsersVerifyPhoneController(),
    );
  }
}
