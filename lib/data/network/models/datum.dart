class Datum {
  Datum({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.status,
    required this.about,
    required this.gender,
    required this.race,
    required this.imageName,
    required this.placeOfBirthId,
    required this.placeOfBirth,
    required this.episodes,
  });

  final String id;
  final String firstName;
  final String lastName;
  final String fullName;
  final int status;
  final String about;
  final int gender;
  final Race race;
  final String imageName;
  final String placeOfBirthId;
  final PlaceOfBirth placeOfBirth;
  final List<Episode> episodes;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        fullName: json["fullName"],
        status: json["status"],
        about: json["about"],
        gender: json["gender"],
        race: raceValues.map[json["race"]]!,
        imageName: json["imageName"],
        placeOfBirthId: json["placeOfBirthId"],
        placeOfBirth: placeOfBirthValues.map[json["placeOfBirth"]]!,
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
        "race": raceValues.reverseMap[race],
        "imageName": imageName,
        "placeOfBirthId": placeOfBirthId,
        "placeOfBirth": placeOfBirthValues.reverseMap[placeOfBirth],
        "episodes": List<dynamic>.from(episodes.map((x) => x.toJson())),
      };
}

class Episode {
  Episode({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  factory Episode.fromJson(Map<String, dynamic> json) => Episode(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

enum PlaceOfBirth { EMPTY, C_137, PLACE_OF_BIRTH }

final placeOfBirthValues = EnumValues(map: {
  "Измерение C-137": PlaceOfBirth.C_137,
  "Земля": PlaceOfBirth.EMPTY,
  "Постапокалиптическое измерение": PlaceOfBirth.PLACE_OF_BIRTH
});

enum Race { EMPTY }

final raceValues = EnumValues(map: {"Человек": Race.EMPTY});

class EnumValues<T> {
  final Map<String, T> map;

  EnumValues({required this.map});

  Map<T, String> get reverseMap => map.map((k, v) => new MapEntry(v, k));
}
