import 'package:flutter_crud/presentation/features/merchant/merchant_controller.dart';
import 'package:get/get.dart';

class MerchantBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MerchantController>(() => MerchantController());
  }
}
