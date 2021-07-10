import 'dart:convert';

import 'package:sc_03/data/network/models/character.dart';

CharacterModel characterModelFromJson(String str) =>
    CharacterModel.fromJson(json.decode(str));

String characterModelToJson(CharacterModel data) => json.encode(data.toJson());

class CharacterModel {
  final bool? succeeded;
  final dynamic message;
  final dynamic error;
  final Character data;

  const CharacterModel({
    this.succeeded,
    this.message,
    this.error,
    required this.data,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) => CharacterModel(
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: Character.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": data.toJson(),
      };
}
