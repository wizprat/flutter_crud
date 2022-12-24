import 'package:flutter/material.dart';
import 'package:flutter_crud/presentation/features/order_items/order_items_controller.dart';
import 'package:get/get.dart';

class EditOrderItemsScreen extends GetView<OrderItemsController> {
  const EditOrderItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Order Items'),
      ),
    );
  }
}
