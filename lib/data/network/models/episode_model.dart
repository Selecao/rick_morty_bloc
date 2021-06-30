import 'dart:convert';

import 'package:sc_03/data/network/models/episode.dart';

EpisodeModel selectedEpisodeModelFromJson(String str) =>
    EpisodeModel.fromJson(json.decode(str));

String selectedEpisodeModelToJson(EpisodeModel data) =>
    json.encode(data.toJson());

class EpisodeModel {
  EpisodeModel({
    this.succeeded,
    this.message,
    this.error,
    required this.data,
  });

  final bool? succeeded;
  final dynamic message;
  final dynamic error;
  final Episode data;

  factory EpisodeModel.fromJson(Map<String, dynamic> json) => EpisodeModel(
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: Episode.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": data.toJson(),
      };
}
