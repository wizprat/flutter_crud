import 'package:flutter/material.dart';
import 'package:flutter_crud/presentation/features/merchant/merchant_controller.dart';
import 'package:flutter_crud/presentation/widgets/data_driven/merchant_form.dart';
import 'package:get/get.dart';

class EditMerchantScreen extends GetView<MerchantController> {
  const EditMerchantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Merchant'),
      ),
      body: const MerchantForm(),
    );
  }
}
