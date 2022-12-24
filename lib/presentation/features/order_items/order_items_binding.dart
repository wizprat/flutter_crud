import 'package:flutter_crud/presentation/features/order_items/order_items_controller.dart';
import 'package:get/get.dart';

class OrderItemsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderItemsController>(() => OrderItemsController());
  }
}
