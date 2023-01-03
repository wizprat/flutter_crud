import 'package:flutter_crud/domain/entities/master_status.dart';

class MasterStatusModel extends MasterStatus {
  MasterStatusModel({
    int? id,
    String? name,
    int? price,
    int? qty,
  }) : super(id: id, name: name, price: price, qty: qty );

  factory MasterStatusModel.fromJson(Map<String, dynamic> json) =>
      MasterStatusModel(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        qty: json["qty"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "qty":qty,
      };
}
