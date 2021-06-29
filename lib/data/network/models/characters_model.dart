import 'dart:convert';

import 'package:sc_03/data/network/models/character.dart';

CharactersModel charactersModelFromJson(String str) =>
    CharactersModel.fromJson(json.decode(str));

String charactersModelToJson(CharactersModel data) =>
    json.encode(data.toJson());

class CharactersModel {
  CharactersModel({
    this.totalRecords,
    this.succeeded,
    this.message,
    this.error,
    this.data,
  });

  final int? totalRecords;
  final bool? succeeded;
  final dynamic message;
  final dynamic error;
  final List<Character>? data;

  factory CharactersModel.fromJson(Map<String, dynamic> json) =>
      CharactersModel(
        totalRecords: json["totalRecords"],
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: List<Character>.from(
            json["data"].map((x) => Character.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "totalRecords": totalRecords,
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": List<dynamic>.from(data?.map((x) => x.toJson()) ?? []),
      };
}
