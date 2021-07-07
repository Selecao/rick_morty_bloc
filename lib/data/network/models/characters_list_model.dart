import 'dart:convert';

import 'package:sc_03/data/network/models/character.dart';

CharactersListModel charactersListModelFromJson(String str) =>
    CharactersListModel.fromJson(json.decode(str));

String charactersListModelToJson(CharactersListModel data) =>
    json.encode(data.toJson());

class CharactersListModel {
  CharactersListModel({
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

  factory CharactersListModel.fromJson(Map<String, dynamic> json) =>
      CharactersListModel(
        totalRecords: json["totalRecords"],
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: List<Character>.from(
            json["data"].map((x) => Character.fromJson(x)) ?? []),
      );

  Map<String, dynamic> toJson() => {
        "totalRecords": totalRecords,
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": List<dynamic>.from(data?.map((x) => x.toJson()) ?? []),
      };
}
