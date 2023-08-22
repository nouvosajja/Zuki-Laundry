// To parse this JSON data, do
//
//     final orderModel = orderModelFromJson(jsonString);

import 'dart:convert';

OrderModel orderModelFromJson(String str) => OrderModel.fromJson(json.decode(str));

String orderModelToJson(OrderModel data) => json.encode(data.toJson());

class OrderModel {
    bool success;
    String message;
    String userId;
    String priceId;
    String paketId;
    dynamic berat;
    dynamic totalHarga;

    OrderModel({
        required this.success,
        required this.message,
        required this.userId,
        required this.priceId,
        required this.paketId,
        required this.berat,
        required this.totalHarga,
    });

    factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        success: json["success"],
        message: json["message"],
        userId: json["user_id"],
        priceId: json["price_id"],
        paketId: json["paket_id"],
        berat: json["berat"],
        totalHarga: json["total_harga"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "user_id": userId,
        "price_id": priceId,
        "paket_id": paketId,
        "berat": berat,
        "total_harga": totalHarga,
    };
}
