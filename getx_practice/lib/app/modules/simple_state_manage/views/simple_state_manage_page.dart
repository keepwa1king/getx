import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/app/modules/simple_state_manage/controllers/count_controller_with_get_x.dart';
import 'package:getx_practice/app/modules/simple_state_manage/controllers/count_controller_with_provider.dart';
import 'package:getx_practice/app/modules/simple_state_manage/widgets/with_get_x.dart';
import 'package:getx_practice/app/modules/simple_state_manage/widgets/with_provider.dart';
import 'package:provider/provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetX()); // 인스턴스 만들어 줌
    return Scaffold(
      appBar: AppBar(
        title: const Text("단순 상태 관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: WithGetX(),
            ),
            Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (_) => CountControllerWithProvider(),
                child: WithProvider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
