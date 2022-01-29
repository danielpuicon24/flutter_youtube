import 'package:flutter_codigo4_youapp/models/thumbnail_model.dart';

class Snippet {
  Snippet({
    required this.publishedAt,
    required this.channelId,
    required this.title,
    required this.description,
    required this.thumbnails,
    required this.channelTitle,
    required this.liveBroadcastContent,
    required this.publishTime,
  });

  DateTime publishedAt;
  String channelId;
  String title;
  String description;
  Thumbnails thumbnails;
  String channelTitle;
  String liveBroadcastContent;
  DateTime publishTime;

  factory Snippet.fromJson(Map<String, dynamic> json) => Snippet(
    publishedAt: DateTime.parse(json["publishedAt"]),
    channelId: json["channelId"] ?? "",
    title: json["title"],
    description: json["description"],
    thumbnails: Thumbnails.fromJson(json["thumbnails"]),
    channelTitle: json["channelTitle"] ?? "",
    liveBroadcastContent: json["liveBroadcastContent"] ?? "",
    publishTime: json["publishTime"] != null ? DateTime.parse(json["publishTime"]) : DateTime.now(),
  );

  Map<String, dynamic> toJson() => {
    "publishedAt": publishedAt.toIso8601String(),
    "channelId": channelId,
    "title": title,
    "description": description,
    "thumbnails": thumbnails.toJson(),
    "channelTitle": channelTitle,
    "liveBroadcastContent": liveBroadcastContent,
    "publishTime": publishTime.toIso8601String(),
  };
}







