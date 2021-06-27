import 'dart:convert';

import 'package:sc_03/data/network/models/datum.dart';

Characters charactersFromJson(String str) =>
    Characters.fromJson(json.decode(str));

String charactersToJson(Characters data) => json.encode(data.toJson());

class Characters {
  Characters({
    required this.totalRecords,
    required this.succeeded,
    this.message,
    this.error,
    required this.data,
  });

  final int totalRecords;
  final bool succeeded;
  final dynamic message;
  final dynamic error;
  final List<Datum> data;

  factory Characters.fromJson(Map<String, dynamic> json) => Characters(
        totalRecords: json["totalRecords"],
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "totalRecords": totalRecords,
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
