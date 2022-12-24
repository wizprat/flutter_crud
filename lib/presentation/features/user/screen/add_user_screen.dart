import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_crud/presentation/features/user/user_controller.dart';
import 'package:flutter_crud/presentation/widgets/data_driven/user_form.dart';
import 'package:get/get.dart';

class AddUserScreen extends GetView<UserController> {
  const AddUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add User'),
      ),
      body: const UserForm(),
    );
  }
}
