// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    int id;
    String name;
    String email;
    String role;
    String number;
    String address;
    dynamic deviceToken;
    dynamic profilePhotoPath;
    DateTime createdAt;
    DateTime updatedAt;

    UserModel({
        required this.id,
        required this.name,
        required this.email,
        required this.role,
        required this.number,
        required this.address,
        required this.deviceToken,
        required this.profilePhotoPath,
        required this.createdAt,
        required this.updatedAt,
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        role: json["role"],
        number: json["number"],
        address: json["address"],
        deviceToken: json["device_token"],
        profilePhotoPath: json["profile_photo_path"],
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
        "device_token": deviceToken,
        "profile_photo_path": profilePhotoPath,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
