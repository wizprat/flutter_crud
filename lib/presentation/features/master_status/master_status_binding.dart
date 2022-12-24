import 'package:flutter_crud/data/repository/master_status_repository.dart';
import 'package:flutter_crud/domain/repositories/master_status_repository.dart';
import 'package:flutter_crud/domain/use_cases/get_master_data_use_case.dart';
import 'package:flutter_crud/presentation/features/master_status/master_status_controller.dart';
import 'package:get/get.dart';

class MasterStatusBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MasterStatusRepositoryIml());
    Get.lazyPut(
        () => GetMasterStatusUseCase(Get.find<MasterStatusRepositoryIml>()));
    Get.lazyPut(
        () => MasterStatusController(Get.find<GetMasterStatusUseCase>()));
  }
}
