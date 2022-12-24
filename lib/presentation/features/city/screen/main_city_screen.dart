import 'package:flutter/material.dart';
import 'package:flutter_crud/presentation/features/city/city_controller.dart';
import 'package:get/get.dart';

class MainCityScreen extends GetView<CityController> {
  const MainCityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('City'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/city/add'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
