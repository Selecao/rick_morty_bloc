import 'dart:convert';

import 'package:sc_03/data/network/models/location.dart';

LocationsListModel locationsListModelFromJson(String str) =>
    LocationsListModel.fromJson(json.decode(str));

String locationsListModelToJson(LocationsListModel data) =>
    json.encode(data.toJson());

class LocationsListModel {
  final int? totalRecords;
  final bool? succeeded;
  final dynamic message;
  final dynamic error;
  final List<Location>? data;

  LocationsListModel({
    this.totalRecords,
    this.succeeded,
    this.message,
    this.error,
    this.data,
  });

  factory LocationsListModel.fromJson(Map<String, dynamic> json) =>
      LocationsListModel(
        totalRecords: json["totalRecords"],
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: List<Location>.from(
            json["data"]?.map((x) => Location.fromJson(x)) ?? []),
      );

  Map<String, dynamic> toJson() => {
        "totalRecords": totalRecords,
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": List<dynamic>.from(data?.map((x) => x.toJson()) ?? []),
      };
}
