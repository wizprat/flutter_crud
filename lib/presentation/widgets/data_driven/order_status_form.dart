import 'package:flutter/material.dart';
import 'package:flutter_crud/presentation/features/order_status/order_status.dart';
import 'package:get/get.dart';

class OrderStatusForm extends GetView<OrderStatusController> {
  const OrderStatusForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          DropdownButtonHideUnderline(
              child: DropdownButtonFormField<String>(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            value: controller.dropdownValue,
            items: controller.list
                .map((value) =>
                    DropdownMenuItem<String>(value: value, child: Text(value)))
                .toList(),
            onChanged: (String? value) {
              controller.dropdownValue = value!;
            },
            decoration: const InputDecoration(
                labelText: 'Order ID', border: OutlineInputBorder()),
          )),
          const SizedBox(height: 16.0),
          DropdownButtonHideUnderline(
              child: DropdownButtonFormField<String>(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            value: controller.dropdownValue,
            items: controller.list
                .map((value) =>
                    DropdownMenuItem<String>(value: value, child: Text(value)))
                .toList(),
            onChanged: (String? value) {
              controller.dropdownValue = value!;
            },
            decoration: const InputDecoration(
                labelText: 'Status ID', border: OutlineInputBorder()),
          )),
          const SizedBox(height: 24.0),
          ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {}
              },
              child: const Text('Submit'))
        ],
      ),
    );
  }
}
