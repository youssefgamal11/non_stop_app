// To parse this JSON data, do
//
//     final homeModel = homeModelFromJson(jsonString);

import 'dart:convert';

HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));

String homeModelToJson(HomeModel data) => json.encode(data.toJson());

class HomeModel {
  HomeModel({
    this.data,
    this.links,
    this.meta,
    this.status,
    this.message,
  });

  List<DataInfo> data;
  Links links;
  Meta meta;
  String status;
  String message;

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
    data: List<DataInfo>.from(json["data"].map((x) => DataInfo.fromJson(x))),
    links: Links.fromJson(json["links"]),
    meta: Meta.fromJson(json["meta"]),
    status: json["status"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "links": links.toJson(),
    "meta": meta.toJson(),
    "status": status,
    "message": message,
  };
}

class DataInfo {
  DataInfo({
    this.id,
    this.name,
    this.desc,
    this.logo,
    this.cover,
    this.phone,
    this.siteUrl,
    this.lat,
    this.lng,
    this.location,
    this.isFavourite,
    this.totalRate,
    this.myRate,
    this.isCart,
    this.hasProduct,
  });

  int id;
  String name;
  String desc;
  String logo;
  String cover;
  String phone;
  String siteUrl;
  double lat;
  double lng;
  String location;
  bool isFavourite;
  int totalRate;
  String myRate;
  bool isCart;
  bool hasProduct;

  factory DataInfo.fromJson(Map<String, dynamic> json) => DataInfo(
    id: json["id"],
    name: json["name"],
    desc: json["desc"],
    logo: json["logo"],
    cover: json["cover"],
    phone: json["phone"] == null ? null : json["phone"],
    siteUrl: json["site_url"] == null ? null : json["site_url"],
    lat: json["lat"].toDouble(),
    lng: json["lng"].toDouble(),
    location: json["location"],
    isFavourite: json["is_favourite"],
    totalRate: json["total_rate"],
    myRate: json["my_rate"],
    isCart: json["is_cart"],
    hasProduct: json["has_product"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "desc": desc,
    "logo": logo,
    "cover": cover,
    "phone": phone == null ? null : phone,
    "site_url": siteUrl == null ? null : siteUrl,
    "lat": lat,
    "lng": lng,
    "location": location,
    "is_favourite": isFavourite,
    "total_rate": totalRate,
    "my_rate": myRate,
    "is_cart": isCart,
    "has_product": hasProduct,
  };
}

class Links {
  Links({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  String first;
  String last;
  dynamic prev;
  dynamic next;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    first: json["first"],
    last: json["last"],
    prev: json["prev"],
    next: json["next"],
  );

  Map<String, dynamic> toJson() => {
    "first": first,
    "last": last,
    "prev": prev,
    "next": next,
  };
}

class Meta {
  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  int currentPage;
  int from;
  int lastPage;
  String path;
  int perPage;
  int to;
  int total;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    currentPage: json["current_page"],
    from: json["from"],
    lastPage: json["last_page"],
    path: json["path"],
    perPage: json["per_page"],
    to: json["to"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "current_page": currentPage,
    "from": from,
    "last_page": lastPage,
    "path": path,
    "per_page": perPage,
    "to": to,
    "total": total,
  };
}
