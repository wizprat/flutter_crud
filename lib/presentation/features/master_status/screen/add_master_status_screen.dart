import 'package:flutter/material.dart';
import 'package:flutter_crud/presentation/widgets/data_driven/master_status_form.dart';

class AddMasterStatusScreen extends StatelessWidget {
  const AddMasterStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Master Status'),
      ),
      body: const MasterStatusForm(),
    );
  }
}
