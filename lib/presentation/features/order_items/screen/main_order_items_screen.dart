import 'package:flutter/material.dart';
import 'package:flutter_crud/presentation/features/order_items/order_items_controller.dart';
import 'package:get/get.dart';

class MainOrderItemsScreen extends GetView<OrderItemsController> {
  const MainOrderItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Items'),
      ),
    );
  }
}
