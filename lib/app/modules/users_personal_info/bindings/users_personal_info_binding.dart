import 'package:get/get.dart';

import '../controllers/users_personal_info_controller.dart';

class UsersPersonalInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UsersPersonalInfoController>(
      () => UsersPersonalInfoController(),
    );
  }
}
