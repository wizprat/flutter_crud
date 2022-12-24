import 'package:flutter_crud/data/models/master_status_model.dart';
import 'package:flutter_crud/domain/repositories/master_status_repository.dart';
import 'package:flutter_crud/domain/use_cases/params/no_param_use_case.dart';

class GetMasterStatusUseCase extends NoParamUseCase<List<MasterStatusModel>?> {
  final MasterStatusRepository _masterStatusRepository;

  GetMasterStatusUseCase(this._masterStatusRepository);

  @override
  Future<List<MasterStatusModel>?> execute() {
    return _masterStatusRepository.getMasterStatus();
  }
}
