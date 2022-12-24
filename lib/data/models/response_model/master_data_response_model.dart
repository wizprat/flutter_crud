import 'package:flutter_crud/data/models/master_status_model.dart';

class MasterStatusResponseModel {
  MasterStatusResponseModel({
    this.data,
    this.message,
    this.error,
  });

  List<MasterStatusModel>? data;
  String? message;
  bool? error;

  factory MasterStatusResponseModel.fromJson(Map<String, dynamic> json) =>
      MasterStatusResponseModel(
        data: List<MasterStatusModel>.from(
            json["data"].map((x) => MasterStatusModel.fromJson(x))),
        message: json["message"],
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data?.map((x) => x.toJson()) ?? []),
        "message": message,
        "error": error,
      };
}
