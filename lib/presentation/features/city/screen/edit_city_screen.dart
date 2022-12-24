import 'package:flutter/material.dart';
import 'package:flutter_crud/presentation/features/city/city_controller.dart';
import 'package:get/get.dart';

class EditCityScreen extends GetView<CityController> {
  const EditCityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit City'),
      ),
    );
  }
}
