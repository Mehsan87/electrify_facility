import 'package:get/get.dart';

import '../controllers/industrial_controller.dart';

class IndustrialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IndustrialController>(
      () => IndustrialController(),
    );
  }
}
