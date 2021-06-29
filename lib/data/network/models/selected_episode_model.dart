/*
import 'dart:convert';

import 'package:sc_03/data/network/models/episode.dart';

SelectedEpisodeModel selectedEpisodeModelFromJson(String str) => SelectedEpisodeModel.fromJson(json.decode(str));

String selectedEpisodeModelToJson(SelectedEpisodeModel data) => json.encode(data.toJson());
*/

class SelectedEpisodeModel {
  /*SelectedEpisodeModel({
    this.succeeded,
    this.message,
    this.error,
    required this.data,
  });

  final bool? succeeded;
  final dynamic message;
  final dynamic error;
  final Data data;

  factory SelectedEpisodeModel.fromJson(Map<String, dynamic> json) => SelectedEpisodeModel(
    succeeded: json["succeeded"],
    message: json["message"],
    error: json["error"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "succeeded": succeeded,
    "message": message,
    "error": error,
    "data": data.toJson(),
  };*/
}

/*

class Data {
  Data({
    this.id,
    this.name,
    this.season,
    this.series,
    this.plot,
    this.premiere,
    this.imageName,
    this.characters,
  });

  final String? id;
  final String? name;
  final int? season;
  final int? series;
  final String? plot;
  final DateTime? premiere;
  final String? imageName;
  final List<Character>? characters;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    name: json["name"],
    season: json["season"],
    series: json["series"],
    plot: json["plot"],
    premiere: DateTime.parse(json["premiere"]),
    imageName: json["imageName"],
    characters: List<Character>.from(json["characters"]?.map((x) => Character.fromJson(x)) ?? []),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "season": season,
    "series": series,
    "plot": plot,
    "premiere": premiere?.toIso8601String(),
    "imageName": imageName,
    "characters": List<dynamic>.from(characters?.map((x) => x.toJson()) ?? []),
  };
}

class Character {
  Character({
    this.id,
    this.firstName,
    this.lastName,
    this.fullName,
    this.status,
    this.about,
    this.gender,
    this.race,
    this.imageName,
    this.placeOfBirthId,
    this.placeOfBirth,
    this.episodes,
  });

  final String id;
  final String firstName;
  final String lastName;
  final String fullName;
  final int status;
  final String about;
  final int gender;
  final String race;
  final String imageName;
  final String placeOfBirthId;
  final dynamic placeOfBirth;
  final dynamic episodes;

  factory Character.fromJson(Map<String, dynamic> json) => Character(
    id: json["id"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    fullName: json["fullName"],
    status: json["status"],
    about: json["about"],
    gender: json["gender"],
    race: json["race"],
    imageName: json["imageName"],
    placeOfBirthId: json["placeOfBirthId"] == null ? null : json["placeOfBirthId"],
    placeOfBirth: json["placeOfBirth"],
    episodes: json["episodes"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "firstName": firstName,
    "lastName": lastName,
    "fullName": fullName,
    "status": status,
    "about": about,
    "gender": gender,
    "race": race,
    "imageName": imageName,
    "placeOfBirthId": placeOfBirthId == null ? null : placeOfBirthId,
    "placeOfBirth": placeOfBirth,
    "episodes": episodes,
  };
}
*/
