import 'package:flutter/material.dart';
import 'package:flutter_crud/presentation/features/order_status/order_status.dart';
import 'package:flutter_crud/presentation/widgets/data_driven/order_status_form.dart';
import 'package:get/get.dart';

class AddOrderStatusScreen extends GetView<OrderStatusController> {
  const AddOrderStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Order Status'),
      ),
      body: const OrderStatusForm(),
    );
  }
}
