import 'package:get/get.dart';
import 'package:speak_nigerian/features/auth/controller/auth.controller.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<AuthController>(
    //   () => AuthController(),
    // );

    Get.put<AuthController>(AuthController());
  }
}
