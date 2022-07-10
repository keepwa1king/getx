import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/app/modules/dependencies/controllers/dependency_controller.dart';
import 'package:getx_practice/app/modules/dependencies/views/get_lazy_put.dart';
import 'package:getx_practice/app/modules/dependencies/views/get_put.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "의존성 주입",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Get.put"),
              onPressed: () {
                Get.to(
                  GetPut(),
                  binding: BindingsBuilder(
                    () {
                      Get.put(DependencyController());
                    },
                  ),
                  // 페이지 넘어가면서 사용할 컨트롤러 인스턴스화 (메모리에 올려 줌)
                );
              },
            ),
            ElevatedButton(
              child: Text("Get.lazyPut"), // 게으른 방식으로 put을 하겠다
              onPressed: () {
                Get.to(
                  GetLazyPut(),
                  binding: BindingsBuilder(
                    () {
                      Get.lazyPut<DependencyController>(() => DependencyController());
                    },
                  ),
                  // 해당 controller에 접근, 사용할 때 메모리에 올려 줌
                );
              },
            ),
            ElevatedButton(
              child: Text("Get.putAsync"), // 비동기 처리를 해 주고 메모리에 올려 줌
              onPressed: () {
                Get.to(
                  GetPut(),
                  binding: BindingsBuilder(
                    () {
                      Get.putAsync<DependencyController>(() async {
                        await Future.delayed(Duration(seconds: 5)); // 5초 지난 후 인스턴스화 함
                        return DependencyController();
                      }); // 비동기식으로 데이터를 받아온 후 컨트롤러를 인스턴스화 할 때 필요함
                    },
                  ),
                );
              },
            ), // 3개는 싱글톤 방식, 하나를 생성하고 여러 곳에서 공유
            ElevatedButton(
              child: Text("Get.create"), // 쓸 때마다 인스턴스들이 여러 개가 만들어짐. 해시코드가 다 다름
              onPressed: () {
                Get.to(
                  GetPut(),
                  binding: BindingsBuilder(
                    () {
                      Get.create<DependencyController>(() => DependencyController());
                    },
                  ),
                ); // 페이지에서 해당 컨트롤러에 접근할 때 인스턴스화 됨
              },
            ),
          ],
        ),
      ),
    );
  }
}
