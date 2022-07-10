import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/app/modules/dependencies/controllers/dependency_controller.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        onPressed: () {
          Get.find<DependencyController>().increase(); // 사용할 때 컨트롤러 인스턴스화
        },
        child: Text(""),
      ),
    );
  }
}
