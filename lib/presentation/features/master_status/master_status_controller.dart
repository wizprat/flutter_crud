import 'package:flutter/cupertino.dart';
import 'package:flutter_crud/data/models/master_status_model.dart';
import 'package:flutter_crud/domain/use_cases/get_master_data_use_case.dart';
import 'package:get/get.dart';

class MasterStatusController extends GetxController
    with StateMixin<List<MasterStatusModel>?> {
  final GetMasterStatusUseCase _getMasterStatusUseCase;

  MasterStatusController(this._getMasterStatusUseCase);

  getMasterStatus() async {
    try {
      List<MasterStatusModel>? result = await _getMasterStatusUseCase.execute();
      if (result != null && result.isNotEmpty) {
        change(result, status: RxStatus.success());
      } else {
        change(null, status: RxStatus.empty());
      }
    } catch (error) {
      change(null, status: RxStatus.error(error.toString()));
    }
  }

  @override
  void onInit() {
    getMasterStatus();
    super.onInit();
  }
}
