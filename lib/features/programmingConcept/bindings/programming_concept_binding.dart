import 'package:get/get.dart';

import '../controllers/programming_concept_controller.dart';

class ProgrammingConceptBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProgrammingConceptController>(
      () => ProgrammingConceptController(),
    );
  }
}
