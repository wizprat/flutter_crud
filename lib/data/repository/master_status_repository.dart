import 'package:flutter_crud/data/models/master_status_model.dart';
import 'package:flutter_crud/data/models/response_model/master_data_response_model.dart';
import 'package:flutter_crud/data/providers/network/apis/master_status_api.dart';
import 'package:flutter_crud/domain/repositories/master_status_repository.dart';

class MasterStatusRepositoryIml extends MasterStatusRepository {
  @override
  Future<List<MasterStatusModel>?> getMasterStatus() async {
    final response = await MasterStatusAPI.getMasterStatus().request();
    return MasterStatusResponseModel.fromJson(response).data;
  }
}
