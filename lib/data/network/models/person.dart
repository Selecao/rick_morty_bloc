class Person {
  Person({
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
  final String race;
  final String imageName;
  final String placeOfBirthId;
  final String placeOfBirth;
  final List<Episode> episodes;

  factory Person.fromJson(Map<String, dynamic> json) => Person(
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
