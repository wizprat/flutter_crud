import 'package:flutter/material.dart';
import 'package:flutter_crud/presentation/features/city/city_controller.dart';
import 'package:flutter_crud/presentation/widgets/data_driven/city_form.dart';
import 'package:get/get.dart';

class AddCityScreen extends GetView<CityController> {
  const AddCityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add City')),
      body: const CityForm(),
    );
  }
}
