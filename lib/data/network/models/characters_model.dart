import 'package:sc_03/data/network/models/person.dart';
import 'dart:convert';

CharactersModel charactersFromJson(String str) =>
    CharactersModel.fromJson(json.decode(str));

String charactersToJson(CharactersModel data) => json.encode(data.toJson());

class CharactersModel {
  CharactersModel({
    required this.totalRecords,
    required this.succeeded,
    required this.message,
    required this.error,
    required this.data,
  });

  final int totalRecords;
  final bool succeeded;
  final dynamic message;
  final dynamic error;
  final List<Person> data;

  factory CharactersModel.fromJson(Map<String, dynamic> json) =>
      CharactersModel(
        totalRecords: json["totalRecords"],
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: List<Person>.from(json["data"].map((x) => Person.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "totalRecords": totalRecords,
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
