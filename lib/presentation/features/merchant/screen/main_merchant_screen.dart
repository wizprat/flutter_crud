import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMerchantScreen extends StatelessWidget {
  const MainMerchantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Merchant'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/merchant/add'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
