import 'package:get/get.dart';

import '../controllers/house_hold_controller.dart';

class HouseHoldBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HouseHoldController>(
      HouseHoldController(),
    );
  }
}
