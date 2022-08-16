
class TestModel {
  TestModel({
    this.statusCode,
    this.success,
    this.message,
    this.model,
  });

  int? statusCode;
  bool? success;
  String? message;
  List<Model>? model;

  factory TestModel.fromMap(Map<String, dynamic> json) => TestModel(
    statusCode: json["statusCode"] == null ? null : json["statusCode"],
    success: json["success"] == null ? null : json["success"],
    message: json["message"] == null ? null : json["message"],
    model: json["model"] == null ? null : List<Model>.from(json["model"].map((x) => Model.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "statusCode": statusCode == null ? null : statusCode,
    "success": success == null ? null : success,
    "message": message == null ? null : message,
    "model": model == null ? null : List<dynamic>.from(model!.map((x) => x.toMap())),
  };
}


class Model {
  Model({
    this.id,
    this.title,
    this.image,
    this.createdAt,
  });

  String? id;
  String? title;
  String? image;
  DateTime? createdAt;

  factory Model.fromMap(Map<String, dynamic> json) => Model(
    id: json["id"] == null ? null : json["id"],
    title: json["title"] == null ? null : json["title"],
    image: json["image"] == null ? null : json["image"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "title": title == null ? null : title,
    "image": image == null ? null : image,
    "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
  };
}
