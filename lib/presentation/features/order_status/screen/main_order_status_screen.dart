import 'package:flutter/material.dart';
import 'package:flutter_crud/presentation/features/order_status/order_status.dart';
import 'package:get/get.dart';

class MainOrderStatusScreen extends GetView<OrderStatusController> {
  const MainOrderStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Status'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/order_status/add'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
