import 'package:sc_03/data/network/models/character.dart';

class Location {
  Location({
    this.id,
    this.name,
    this.type,
    this.measurements,
    this.about,
    this.imageName,
    this.characters,
    this.placeOfBirthCharacters,
  });

  final String? id;
  final String? name;
  final String? type;
  final String? measurements;
  final String? about;
  final String? imageName;
  final List<Character>? characters;
  final List<Character>? placeOfBirthCharacters;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        measurements: json["measurements"],
        about: json["about"],
        imageName: json["imageName"],
        characters: List<Character>.from(json["characters"].map((x) => x)),
        placeOfBirthCharacters:
            List<Character>.from(json["placeOfBirthCharacters"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "measurements": measurements,
        "about": about,
        "imageName": imageName,
        "characters": List<Character>.from(characters?.map((x) => x) ?? []),
        "placeOfBirthCharacters":
            List<Character>.from(placeOfBirthCharacters?.map((x) => x) ?? []),
      };
}
