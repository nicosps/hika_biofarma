import 'package:get/get.dart';

import '../controllers/berita_hika_controller.dart';

class BeritaHikaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BeritaHikaController>(
      () => BeritaHikaController(),
    );
  }
}
