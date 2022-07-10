import 'package:get/get.dart';
import 'package:getx_practice/app/modules/simple_state_manage/controllers/count_controller_with_get_x.dart';

class BindingPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CountControllerWithGetX());
  }
}
