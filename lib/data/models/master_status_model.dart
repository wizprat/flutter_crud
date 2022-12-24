import 'package:flutter_crud/domain/entities/master_status.dart';

class MasterStatusModel extends MasterStatus {
  MasterStatusModel({
    int? id,
    String? name,
    String? description,
  }) : super(id: id, name: name, description: description);

  factory MasterStatusModel.fromJson(Map<String, dynamic> json) =>
      MasterStatusModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
      };
}
