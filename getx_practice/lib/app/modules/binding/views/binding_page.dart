import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/app/modules/simple_state_manage/controllers/count_controller_with_get_x.dart';

class BindingPage extends GetView<CountControllerWithGetX> {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // GetBuilder<CountControllerWithGetX>(
            //   builder: (_) {
            //     return Text(
            //       "${_.count}",
            //       style: TextStyle(fontSize: 40),
            //     );
            //   },
            // ),
            Obx(
              () => Text(
                controller.count.toString(),
                style: TextStyle(fontSize: 40),
              ),
            ), // 오류가 남 why? observable이어야 함
            ElevatedButton(
              onPressed: () {
                // Get.find<CountControllerWithGetX>().increase();
                // CountControllerWithGetX.to.increase();
                controller.increase();
              },
              child: Text(""),
            ),
          ],
        ),
      ),
    );
  }
}
