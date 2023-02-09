import 'package:get/get.dart';

import '../controllers/merchants_personal_info_controller.dart';

class MerchantsPersonalInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MerchantsPersonalInfoController>(
      () => MerchantsPersonalInfoController(),
    );
  }
}
