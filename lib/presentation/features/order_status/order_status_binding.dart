import 'package:flutter_crud/presentation/features/order_status/order_status.dart';
import 'package:get/get.dart';

class OrderStatusBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderStatusController>(() => OrderStatusController());
  }
}
