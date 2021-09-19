// To parse this JSON data, do
//
//     final adsModel = adsModelFromJson(jsonString);

import 'dart:convert';

AdsModel adsModelFromJson(String str) => AdsModel.fromJson(json.decode(str));

String adsModelToJson(AdsModel data) => json.encode(data.toJson());

class AdsModel {
  AdsModel({
    this.data,
    this.status,
    this.message,
  });

  List<Datum> data;
  String status;
  String message;

  factory AdsModel.fromJson(Map<String, dynamic> json) => AdsModel(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    status: json["status"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "status": status,
    "message": message,
  };
}

class Datum {
  Datum({
    this.id,
    this.productId,
    this.image,
    this.name,
    this.desc,
  });

  int id;
  int productId;
  String image;
  String name;
  String desc;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    productId: json["product_id"] == null ? null : json["product_id"],
    image: json["image"],
    name: json["name"],
    desc: json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "product_id": productId == null ? null : productId,
    "image": image,
    "name": name,
    "desc": desc,
  };
}
