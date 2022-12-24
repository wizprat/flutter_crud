import 'package:flutter_crud/data/providers/network/api_endpoint.dart';
import 'package:flutter_crud/data/providers/network/api_provider.dart';
import 'package:flutter_crud/data/providers/network/api_request_representable.dart';

enum MasterStatusEndpoint { fetch, add, edit, delete }

class MasterStatusAPI implements APIRequestRepresentable {
  final MasterStatusEndpoint masterStatusEndpoint;

  String? eventId;
  String? eventKey;

  MasterStatusAPI._(
      {required this.masterStatusEndpoint, this.eventId, this.eventKey});

  MasterStatusAPI.getMasterStatus()
      : this._(masterStatusEndpoint: MasterStatusEndpoint.fetch);

  MasterStatusAPI.addMasterStatus()
      : this._(masterStatusEndpoint: MasterStatusEndpoint.add);

  @override
  get body => null;

  @override 
  String get endpoint => APIEndpoint.masterStatus;

  @override
  HTTPMethod get method {
    if (masterStatusEndpoint == MasterStatusEndpoint.fetch) {
      return HTTPMethod.get;
    } else {
      return HTTPMethod.post;
    }
  }

  @override
  String get path => '';

  @override
  Map<String, String>? get query => null;

  @override
  Future request() => APIProvider.instance.request(this);

  @override
  String get url => endpoint + path;
}
