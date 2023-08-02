// To parse this JSON data, do
//
//     final paketModel = paketModelFromJson(jsonString);

import 'dart:convert';

List<PaketModel> paketModelFromJson(String str) => List<PaketModel>.from(json.decode(str).map((x) => PaketModel.fromJson(x)));

String paketModelToJson(List<PaketModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PaketModel {
    int id;
    String namaPkt;
    dynamic createdAt;
    dynamic updatedAt;

    PaketModel({
        required this.id,
        required this.namaPkt,
        this.createdAt,
        this.updatedAt,
    });

    factory PaketModel.fromJson(Map<String, dynamic> json) => PaketModel(
        id: json["id"],
        namaPkt: json["nama_pkt"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nama_pkt": namaPkt,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
