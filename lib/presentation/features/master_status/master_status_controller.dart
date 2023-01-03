import 'package:flutter/cupertino.dart';
import 'package:flutter_crud/data/models/master_status_model.dart';
import 'package:flutter_crud/domain/entities/master_status.dart';
import 'package:flutter_crud/domain/use_cases/get_master_data_use_case.dart';
import 'package:get/get.dart';

class MasterStatusController extends GetxController
    with StateMixin<List<MasterStatusModel>?> {
  final GetMasterStatusUseCase _getMasterStatusUseCase;

  MasterStatusController(this._getMasterStatusUseCase);

  var fakeData = [
    MasterStatusModel(id: 1, name: 'burger', price: 5000, qty: 0),
    MasterStatusModel(id: 2, name: 'pizza', price: 10000, qty: 0),
    MasterStatusModel(id: 1, name: 'spagheti', price: 15000, qty: 1),
  ];

  RxList<MasterStatusModel> items = RxList();
  RxInt totalPrice = 0.obs;

  // onAddItem(MasterStatusModel data) {
  //   itemAdded.add(data);
  //   totalPrice = totalPrice + data.price!;
  // }

  onAddQty(MasterStatusModel data) {
    data.qty! + 1;
    print(data.qty);
    totalPrice = totalPrice + data.price!;
    update();
  }

  onRemoveQty(MasterStatusModel data) {
    data.qty! - 1;
    print(data.qty);
    totalPrice = totalPrice - data.price!;
    update();
  }

  getMasterStatus() async {
    try {
      // List<MasterStatusModel>? result = await _getMasterStatusUseCase.execute();
      List<MasterStatusModel>? result = fakeData;
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
