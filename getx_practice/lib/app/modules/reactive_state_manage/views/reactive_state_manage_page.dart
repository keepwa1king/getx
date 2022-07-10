import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/app/modules/reactive_state_manage/controllers/count_controller_with_reactive.dart';
import 'package:getx_practice/app/modules/simple_state_manage/controllers/count_controller_with_get_x.dart';
import 'package:getx_practice/app/modules/simple_state_manage/controllers/count_controller_with_provider.dart';
import 'package:getx_practice/app/modules/simple_state_manage/widgets/with_get_x.dart';
import 'package:getx_practice/app/modules/simple_state_manage/widgets/with_provider.dart';
import 'package:provider/provider.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive()); // 인스턴스 만들어 줌
    return Scaffold(
      appBar: AppBar(
        title: const Text("반응형 상태 관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // GetX(
            //   builder: (_) {
            //     return Text(
            //       "${Get.find<CountControllerWithReactive>().count.value}",
            //       style: TextStyle(
            //         fontSize: 50,
            //       ),
            //     );
            //   },
            // ),
            Obx(
              () => Text(
                "${Get.find<CountControllerWithReactive>().count.value}",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              },
              child: Text(
                "+",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().putNumber(5);
              },
              child: Text(
                "5로 변경",
                style: TextStyle(
                  fontSize: 30,
                ), // 이미 5라면 업데이트가 안 됨
              ),
            )
          ],
        ),
      ),
    );
  }
}
