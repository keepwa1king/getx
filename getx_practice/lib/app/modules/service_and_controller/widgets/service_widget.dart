import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/app/modules/service_and_controller/controllers/service.dart';

class GetxServiceWidget extends GetView<GetxServiceTest> {
  const GetxServiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                controller.count.value.toString(),
                style: TextStyle(fontSize: 50),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.increase();
              },
              child: Text(
                "Getx Service Increase",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.reset();
              },
              child: Text(
                "Getx Service reset",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
