import 'package:flutter_crud/presentation/features/city/city_controller.dart';
import 'package:get/get.dart';

class CityBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CityController>(() => CityController());
  }
  
}