import 'package:flutter/material.dart';
import 'package:flutter_crud/presentation/features/user/user_controller.dart';
import 'package:get/get.dart';

class EditUserScreen extends GetView<UserController> {
  const EditUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit User'),
      ),
    );
  }
}
