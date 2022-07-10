import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_practice/app/modules/dependencies/views/dependency_manage_page.dart';
import 'package:getx_practice/app/modules/reactive_state_manage/views/reactive_state_manage_page.dart';
import 'package:getx_practice/app/modules/service_and_controller/views/service_and_controller_page.dart';
import 'package:getx_practice/app/modules/simple_state_manage/views/simple_state_manage_page.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text(
                "단순 상태 관리",
              ),
              onPressed: () {
                Get.to(SimpleStateManagePage());
              },
            ),
            ElevatedButton(
              child: Text(
                "반응형 상태 관리",
              ),
              onPressed: () {
                Get.to(ReactiveStateManagePage());
              },
            ),
            ElevatedButton(
              child: Text(
                "의존성 관리",
              ),
              onPressed: () {
                Get.to(DependencyManagePage());
              },
            ),
            ElevatedButton(
              child: Text(
                "바인딩",
              ),
              onPressed: () {
                Get.toNamed('/binding');
              },
            ),
            ElevatedButton(
              child: Text(
                "GetxService vs GetxController",
              ),
              onPressed: () {
                Get.to(ServiceAndControllerPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
