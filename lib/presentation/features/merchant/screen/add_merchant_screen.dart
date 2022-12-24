import 'package:flutter/material.dart';
import 'package:flutter_crud/presentation/features/merchant/merchant_controller.dart';
import 'package:flutter_crud/presentation/widgets/data_driven/merchant_form.dart';
import 'package:get/get.dart';

class AddMerchantScreen extends GetView<MerchantController> {
  const AddMerchantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Merchant'),
      ),
      body: const MerchantForm(),
    );
  }
}
