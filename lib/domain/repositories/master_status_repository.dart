import 'package:flutter_crud/data/models/master_status_model.dart';

abstract class MasterStatusRepository {
  Future<List<MasterStatusModel>?> getMasterStatus();
}
