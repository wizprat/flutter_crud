import 'package:flutter/material.dart';
import 'package:flutter_crud/presentation/features/merchant/merchant_controller.dart';
import 'package:get/get.dart';

class MerchantForm extends GetView<MerchantController> {
  const MerchantForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
            ),
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            keyboardType: TextInputType.multiline,
            maxLines: null,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Address',
            ),
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Phone',
            ),
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            controller: controller.dateExpiredController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            keyboardType: TextInputType.datetime,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Expired Date',
                suffixIcon: IconButton(
                    onPressed: () => controller.showExpiredDatePicker(context),
                    icon: const Icon(Icons.today))),
          ),
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
