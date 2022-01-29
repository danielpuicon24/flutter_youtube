

import 'package:flutter_codigo4_youapp/models/id_model.dart';
import 'package:flutter_codigo4_youapp/models/snippet_model.dart';

class VideoModel {
  VideoModel({
    required this.kind,
    required this.etag,
    this.id,
    this.id2,
    required this.snippet,
  });

  String kind;
  String etag;
  Id? id;
  String? id2;
  Snippet snippet;

  factory VideoModel.fromJson(Map<String, dynamic> json) => VideoModel(
    kind: json["kind"],
    etag: json["etag"],
    id: json["id"] is String ? null : Id.fromJson(json["id"]),
    id2: json["id"] is String ? json["id"] : null,
    snippet: Snippet.fromJson(json["snippet"]),
  );

  Map<String, dynamic> toJson() => {
    "kind": kind,
    "etag": etag,
    "id": id != null ? id!.toJson() : "",
    "snippet": snippet.toJson(),
  };
}




