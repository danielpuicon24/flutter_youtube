
import 'package:flutter_codigo4_youapp/models/default_model.dart';

class Thumbnails {
  Thumbnails({
    required this.thumbnailsDefault,
    required this.medium,
    required this.high,
  });

  Default thumbnailsDefault;
  Default medium;
  Default high;

  factory Thumbnails.fromJson(Map<String, dynamic> json) => Thumbnails(
    thumbnailsDefault: Default.fromJson(json["default"]),
    medium: Default.fromJson(json["medium"]),
    high: Default.fromJson(json["high"]),
  );

  Map<String, dynamic> toJson() => {
    "default": thumbnailsDefault.toJson(),
    "medium": medium.toJson(),
    "high": high.toJson(),
  };
}

