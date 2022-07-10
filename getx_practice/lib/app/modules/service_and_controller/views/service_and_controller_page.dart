import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/app/modules/service_and_controller/controllers/controller_test.dart';
import 'package:getx_practice/app/modules/service_and_controller/controllers/service.dart';
import 'package:getx_practice/app/modules/service_and_controller/widgets/controller_widget.dart';
import 'package:getx_practice/app/modules/service_and_controller/widgets/service_widget.dart';

class ServiceAndControllerPage extends StatelessWidget {
  const ServiceAndControllerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text(
                "Getx Controller",
              ),
              onPressed: () {
                Get.to(
                  GetxControllerWidget(),
                  binding: BindingsBuilder(
                    () => Get.lazyPut<GetxControllerTest>(
                      () => GetxControllerTest(),
                    ),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text(
                "Getx Service",
              ),
              onPressed: () {
                Get.to(
                  GetxServiceWidget(),
                  binding: BindingsBuilder(
                    () => Get.lazyPut<GetxServiceTest>(
                      () => GetxServiceTest(),
                    ),
                  ),
                ); // 나갔다 들어와도 service는 값을 유지함, reset을 통해서 전부 다 제거 가능
              },
            ),
          ],
        ),
      ),
    );
  }
}
