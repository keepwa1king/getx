import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_practice/app/modules/service_and_controller/controllers/controller_test.dart';

import 'app/routes/app_pages.dart';

void main() {
  // initService();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

// void initService() {
//   Get.put(GetxControllerTest(), permanent: true); // 영구적으로 사용하겠다 메모리에서 안 지워짐
// }
