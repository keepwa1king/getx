import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_practice/app/modules/simple_state_manage/controllers/count_controller_with_get_x.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "GetX",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          GetBuilder<CountControllerWithGetX>(
            builder: (controller) {
              print("update!");
              return Text(
                "${controller.count}",
                style: TextStyle(
                  fontSize: 50,
                ),
              );
            },
          ),
          _button(),
          ElevatedButton(
            onPressed: () {
              Get.find<CountControllerWithGetX>().putNumber(5);
            },
            child: Text(
              "5로 변경",
              style: TextStyle(
                fontSize: 30,
              ),
            ), // 반응형 상태관리와는 다르게 이미 5임에도 계속 업데이트가 됨
          ),
        ],
      ),
    );
  }

  ElevatedButton _button() {
    return ElevatedButton(
      onPressed: () {
        Get.find<CountControllerWithGetX>().increase();
      },
      child: Text(
        "+",
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }
}
