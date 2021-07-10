import 'package:sc_03/data/network/models/episode.dart';
import 'package:sc_03/data/network/models/location.dart';

enum Status { live, dead, unknown }

class Character {
  final String? id;
  final String? firstName;
  final String? lastName;
  final String? fullName;
  final int? status;
  final String? about;
  final int? gender;
  final String? race;
  final String? imageName;
  final String? locationId;
  final Location? location;
  final String? placeOfBirthId;
  final Location? placeOfBirth;
  final List<Episode>? episodes;

  const Character({
    this.id,
    this.firstName,
    this.lastName,
    this.fullName,
    this.status,
    this.about,
    this.gender,
    this.race,
    this.locationId,
    this.location,
    this.imageName,
    this.placeOfBirthId,
    this.placeOfBirth,
    this.episodes,
  });

  factory Character.fromJson(Map<String, dynamic> json) => Character(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        fullName: json["fullName"],
        status: json["status"],
        about: json["about"],
        gender: json["gender"],
        race: json["race"],
        locationId: json["locationId"],
        location: json["location"] == null
            ? null
            : Location.fromJson(json["location"]),
        imageName: json["imageName"],
        placeOfBirthId: json["placeOfBirthId"],
        placeOfBirth: json["placeOfBirth"] == null
            ? null
            : ((json["placeOfBirth"] is String)
                ? Location(name: json["placeOfBirth"])
                : Location.fromJson(json["placeOfBirth"])),
        episodes: List<Episode>.from(
            json["episodes"]?.map((x) => Episode.fromJson(x)) ?? []),
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
        "locationId": locationId,
        "location": location?.toJson(),
        "imageName": imageName,
        "placeOfBirthId": placeOfBirthId,
        "placeOfBirth": placeOfBirth?.toJson(),
        "episodes": List<dynamic>.from(episodes?.map((x) => x.toJson()) ?? []),
      };
}
