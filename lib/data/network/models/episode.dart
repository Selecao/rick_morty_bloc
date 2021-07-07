import 'package:sc_03/data/network/models/character.dart';

class Episode {
  final String? id;
  final String? name;
  final int? season;
  final int? series;
  final String? plot;
  final DateTime? premiere;
  final String? imageName;
  final List<Character>? characters;

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

  factory Episode.fromJson(Map<String, dynamic> json) => Episode(
        id: json["id"],
        name: json["name"],
        season: json["season"],
        series: json["series"],
        plot: json["plot"],
        premiere: DateTime.parse(
            json["premiere"] ?? DateTime.utc(1000, 1, 1).toString()),
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
        "premiere": premiere?.toIso8601String(),
        "imageName": imageName,
        "characters":
            List<Character>.from(characters?.map((x) => x.toJson()) ?? []),
      };
}

Comparator<Episode> sortBySeries =
    (a, b) => (a.series ?? 0).compareTo(b.series ?? 0);

extension DateTimeExtension on DateTime {
  String toStringRus() {
    String ruMonth;
    const List<String> russianMonths = [
      "января",
      "февраля",
      "марта",
      "апреля",
      "мая",
      "июня",
      "июля",
      "августа",
      "сентября",
      "октября",
      "ноября",
      "декабря",
    ];
    ruMonth = russianMonths[this.month - 1];

    return "${this.day} $ruMonth ${this.year}";
  }
}
