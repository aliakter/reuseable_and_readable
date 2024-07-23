import 'package:get/get.dart';
import '../controllers/chip_widget_controller.dart';

class ChipWidgetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ChipWidgetController(),
    );
  }
}
