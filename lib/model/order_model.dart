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

    OrderModel({
        required this.success,
        required this.message,
        required this.userId,
        required this.priceId,
    });

    factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        success: json["success"],
        message: json["message"],
        userId: json["user_id"],
        priceId: json["price_id"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "user_id": userId,
        "price_id": priceId,
    };
}
