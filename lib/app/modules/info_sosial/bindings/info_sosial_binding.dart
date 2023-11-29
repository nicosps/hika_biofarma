import 'package:get/get.dart';

import '../controllers/info_sosial_controller.dart';

class InfoSosialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InfoSosialController>(
      () => InfoSosialController(),
    );
  }
}
