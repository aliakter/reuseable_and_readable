import 'package:get/get.dart';
import 'package:useable_and_readable/features/chip_widget/bindings/chip_widget_binding.dart';
import 'package:useable_and_readable/features/chip_widget/views/chip_widget_screen.dart';
import 'package:useable_and_readable/features/container/binding/container_binding.dart';
import 'package:useable_and_readable/features/container/views/container_screen.dart';
import 'package:useable_and_readable/features/home/bindings/home_binding.dart';
import 'package:useable_and_readable/features/home/views/home_view.dart';
import 'package:useable_and_readable/features/programmingConcept/bindings/programming_concept_binding.dart';
import 'package:useable_and_readable/features/programmingConcept/views/programming_concept_view.dart';
import 'package:useable_and_readable/features/splash/views/splash_screen.dart';
import 'package:useable_and_readable/features/text/bindings/text_design_binding.dart';
import 'package:useable_and_readable/features/text/views/text_design_view.dart';
import 'package:useable_and_readable/routes/routes.dart';

class Pages {
  static const initial = SplashScreen();

  static final pages = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.container,
      page: () => const ContainerScreen(),
      binding: ContainerBinding(),
    ),
    GetPage(
      name: Routes.textView,
      page: () => const TextDesignScreen(),
      binding: TextDesignBinding(),
    ),
    GetPage(
      name: Routes.chipWidget,
      page: () => const ChipWidgetScreen(),
      binding: ChipWidgetBinding(),
    ),
    GetPage(
      name: Routes.programmingConcept,
      page: () => const ProgrammingConceptView(),
      binding: ProgrammingConceptBinding(),
    ),
  ];
}
