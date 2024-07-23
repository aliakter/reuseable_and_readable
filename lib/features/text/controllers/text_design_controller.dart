import 'package:get/get.dart';

class TextDesignController extends GetxController {
  final List<String> items = List.generate(
    50,
    (index) => 'Testing Text $index',
  );

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
