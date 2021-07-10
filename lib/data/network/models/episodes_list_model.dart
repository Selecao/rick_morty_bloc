import 'dart:convert';

import 'package:sc_03/data/network/models/episode.dart';

EpisodesListModel episodesListModelFromJson(String str) =>
    EpisodesListModel.fromJson(json.decode(str));

String episodesListModelToJson(EpisodesListModel data) =>
    json.encode(data.toJson());

class EpisodesListModel {
  final int? totalRecords;
  final bool? succeeded;
  final dynamic message;
  final dynamic error;
  final List<Episode>? data;

  const EpisodesListModel({
    this.totalRecords,
    this.succeeded,
    this.message,
    this.error,
    this.data,
  });

  factory EpisodesListModel.fromJson(Map<String, dynamic> json) =>
      EpisodesListModel(
        totalRecords: json["totalRecords"],
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: List<Episode>.from(
            json["data"]?.map((x) => Episode.fromJson(x)) ?? []),
      );

  Map<String, dynamic> toJson() => {
        "totalRecords": totalRecords,
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": List<dynamic>.from(data?.map((x) => x.toJson()) ?? []),
      };
}
