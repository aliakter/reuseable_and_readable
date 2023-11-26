import 'package:get/get.dart';
import 'package:useable_and_readable/app/modules/text/controllers/text_design_controller.dart';

class TextDesignBinding extends Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => TextDesignController());
  }
}