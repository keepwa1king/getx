import 'package:get/get.dart';

enum NUM { FIRST, SECOND }

class User {
  String? name;
  int? age;

  User({this.name, this.age});
}

class CountControllerWithReactive extends GetxController {
  RxInt count = 0.obs;
  Rx<NUM> nums = NUM.FIRST.obs;
  Rx<User> user = User().obs;
  RxList<String> list = [""].obs;

  void increase() {
    count++;
    // user(User());
    // user.update((_user) {
    //   _user?.name = "dd";
    // });
    // list.addAll();
    // list.add();
    // list.addIf(user.value.name == "개발하는 호랑이", "okay");
  }

  void putNumber(int value) {
    count.value = value;
  }

  @override
  void onInit() {
    ever(count, (_) => print("count가 바뀔 때마다 매번 호출")); // .obs를 통한 reactive 한 상태일 때만 가능
    once(count, (_) => print("한번만 호출")); // 처음 바뀌었을 때만 호출
    debounce(
      count,
      (_) => print("마지막 변경 후 1초 뒤에 한번만 호출"),
      time: Duration(seconds: 1),
    ); // 검색쪽에 사용하면 좋음
    interval(
      count,
      (_) => print("변경되고 있는 동안 1초마다 호출"),
      time: Duration(seconds: 1),
    );
    super.onInit();
  }
}
