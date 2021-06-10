import 'package:sc_03/data/network/models/episode.dart';

class Season {
  final String name;
  final List<Episode> chapters;

  Season(
    this.name,
    this.chapters,
  );
}
