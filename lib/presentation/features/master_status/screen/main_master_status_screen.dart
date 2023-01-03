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
            itemBuilder: (context, index) => GetBuilder<MasterStatusController>(
                  builder: (c) => ListTile(
                    title: Text('${data?[index].name}'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${data?[index].price}'),
                        data?[index].qty != 0
                            ? Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        c.onRemoveQty(data![index]);
                                      },
                                      icon: Icon(Icons.remove)),
                                  Text('${data?[index].qty}'),
                                  IconButton(
                                      onPressed: () {
                                        c.onAddQty(data![index]);
                                      },
                                      icon: Icon(Icons.add))
                                ],
                              )
                            : ElevatedButton(
                                onPressed: () {
                                  c.onAddQty(data![index]);
                                },
                                child: Text('Add'),
                              ),
                      ],
                    ),
                  ),
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
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 30,
        child: Center(
            child: Obx(() => Text('TOTAL : ${controller.totalPrice.value}'))),
      ),
    );
  }
}
