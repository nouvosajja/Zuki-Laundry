// To parse this JSON data, do
//
//     final updateModel = updateModelFromJson(jsonString);

import 'dart:convert';

UpdateModel updateModelFromJson(String str) => UpdateModel.fromJson(json.decode(str));

String updateModelToJson(UpdateModel data) => json.encode(data.toJson());

class UpdateModel {
    int id;
    String name;
    String email;
    String role;
    String number;
    String address;
    DateTime createdAt;
    DateTime updatedAt;

    UpdateModel({
        required this.id,
        required this.name,
        required this.email,
        required this.role,
        required this.number,
        required this.address,
        required this.createdAt,
        required this.updatedAt,
    });

    factory UpdateModel.fromJson(Map<String, dynamic> json) => UpdateModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        role: json["role"],
        number: json["number"],
        address: json["address"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "role": role,
        "number": number,
        "address": address,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
