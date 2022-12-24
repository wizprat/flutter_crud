import 'package:flutter/material.dart';
import 'package:flutter_crud/presentation/features/user/user_controller.dart';
import 'package:get/get.dart';

class MainUserScreen extends GetView<UserController> {
  const MainUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/user/add'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
