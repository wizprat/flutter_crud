import 'package:flutter/material.dart';
import 'package:flutter_crud/presentation/features/master_status/master_status_controller.dart';
import 'package:flutter_crud/presentation/widgets/data_driven/master_status_form.dart';
import 'package:get/get.dart';

class EditMasterStatusScreen extends GetView<MasterStatusController> {
  const EditMasterStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Master Status'),
      ),
      body: const MasterStatusForm(),
    );
  }
}
