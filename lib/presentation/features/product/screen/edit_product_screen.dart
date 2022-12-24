import 'package:flutter/material.dart';
import 'package:flutter_crud/presentation/features/product/product.dart';
import 'package:get/get.dart';

class EditProductScreen extends GetView<ProductController> {
  const EditProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Product'),
      ),
    );
  }
}
