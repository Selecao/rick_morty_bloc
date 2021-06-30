import 'package:sc_03/data/network/models/character.dart';

class Episode {
  Episode({
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
  //final DateTime? premiere;
  final String? premiere;
  final String? imageName;
  final List<Character>? characters;

  factory Episode.fromJson(Map<String, dynamic> json) => Episode(
        id: json["id"],
        name: json["name"],
        season: json["season"],
        series: json["series"],
        plot: json["plot"],
        /*premiere: DateTime.parse(
            json["premiere"] ?? DateTime.utc(1000, 1, 1).toString()),*/
        premiere: json["premiere"],
        imageName: json["imageName"],
        characters: List<Character>.from(
            json["characters"]?.map((x) => Character.fromJson(x)) ?? []),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "season": season,
        "series": series,
        "plot": plot,
        "premiere": premiere,
        "imageName": imageName,
        "characters":
            List<Character>.from(characters?.map((x) => x.toJson()) ?? []),
      };
}
