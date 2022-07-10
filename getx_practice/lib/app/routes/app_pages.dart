import 'package:get/get.dart';
import 'package:getx_practice/app/modules/binding/bindings/binding_page_binding.dart';
import 'package:getx_practice/app/modules/binding/views/binding_page.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BINDING,
      page: () => const BindingPage(),
      binding: BindingPageBinding(),
    ),
  ];
}
