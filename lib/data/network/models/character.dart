//import 'package:sc_03/data/network/models/episode.dart';

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

  final String? id;
  final String? firstName;
  final String? lastName;
  final String? fullName;
  final int? status;
  final String? about;
  final int? gender;
  final String? race;
  final String? imageName;
  final String? placeOfBirthId;
  final String? placeOfBirth;
  final List<Episode>? episodes;

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
        placeOfBirthId: json["placeOfBirthId"],
        placeOfBirth: json["placeOfBirth"],
        episodes: List<Episode>.from(
            json["episodes"].map((x) => Episode.fromJson(x))),
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
        "placeOfBirthId": placeOfBirthId,
        "placeOfBirth": placeOfBirth,
        "episodes": List<dynamic>.from(episodes?.map((x) => x.toJson()) ?? []),
      };
}

class Episode {
  Episode({
    this.id,
    this.name,
  });

  final String? id;
  final String? name;

  factory Episode.fromJson(Map<String, dynamic> json) => Episode(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
