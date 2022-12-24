import 'package:flutter/material.dart';
import 'package:flutter_crud/presentation/features/order_status/order_status.dart';
import 'package:get/get.dart';

class EditOrderStatusScreen extends GetView<OrderStatusController> {
  const EditOrderStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Order Status'),
      ),
    );
  }
}
