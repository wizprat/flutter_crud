import 'package:flutter/material.dart';
import 'package:flutter_crud/presentation/features/master_status/master_status_controller.dart';
import 'package:get/get.dart';

class MainMasterStatusScreen extends GetView<MasterStatusController> {
  const MainMasterStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Master Status'),
      ),
      body: controller.obx(
        (data) => ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text('${data?[index].name}'),
                  subtitle: Text('${data?[index].price}'),
                  trailing: ElevatedButton(onPressed: () {
                    
                  }, child: Text('Add'),),
                  
                ),
            separatorBuilder: (context, index) => const SizedBox(height: 8.0),
            itemCount: data?.length ?? 0),
        onEmpty: const Center(
          child: Text('Data kosong'),
        ),
        onError: (error) => Center(
          child: Text('$error'),
        ),
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/master_status/add'),
        child: const Icon(Icons.add),
      ), */
    );
  }
}
