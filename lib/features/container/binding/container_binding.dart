import 'package:get/get.dart';
import 'package:useable_and_readable/features/container/controller/container_controller.dart';

class ContainerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ContainerController());
  }
}