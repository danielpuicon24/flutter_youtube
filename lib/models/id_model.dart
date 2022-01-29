class Id {
  Id({
    required this.kind,
    required this.videoId,
  });

  String kind;
  String videoId;

  factory Id.fromJson(Map<String, dynamic> json) => Id(
    kind: json["kind"] ?? "",
    videoId: json["videoId"] ?? "",
  );

  Map<String, dynamic> toJson() => {
    "kind": kind,
    "videoId": videoId,
  };
}