import 'package:sc_03/data/network/models/episode.dart';

class Season {
  final String name;
  final List<Episode> episodes;

  const Season(
    this.name,
    this.episodes,
  );
}
