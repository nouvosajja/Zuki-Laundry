// To parse this JSON data, do
//
//     final priceModel = priceModelFromJson(jsonString);

import 'dart:convert';

List<PriceModel> priceModelFromJson(String str) => List<PriceModel>.from(json.decode(str).map((x) => PriceModel.fromJson(x)));

String priceModelToJson(List<PriceModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PriceModel {
    int id;
    String waktu;
    String paketId;
    String harga;
    dynamic createdAt;
    dynamic updatedAt;

    PriceModel({
        required this.id,
        required this.waktu,
        required this.paketId,
        required this.harga,
        this.createdAt,
        this.updatedAt,
    });

    factory PriceModel.fromJson(Map<String, dynamic> json) => PriceModel(
        id: json["id"],
        waktu: json["waktu"],
        paketId: json["paket_id"],
        harga: json["harga"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "waktu": waktu,
        "paket_id": paketId,
        "harga": harga,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
