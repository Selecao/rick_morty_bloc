import 'package:sc_03/data/network/models/character.dart';

class Episode {
  final String image;
  final String number;
  final String title;
  final String releaseDate;
  final String description;
  final List<Character> characters;

  Episode(
    this.image,
    this.number,
    this.title,
    this.releaseDate, {
    this.description = 'Not available',
    required this.characters,
  });
}
