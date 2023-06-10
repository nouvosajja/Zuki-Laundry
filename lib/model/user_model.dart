// // To parse this JSON data, do
// //
// //     final userModel = userModelFromJson(jsonString);

// import 'package:meta/meta.dart';
// import 'dart:convert';

// UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

// String userModelToJson(UserModel data) => json.encode(data.toJson());

// class UserModel {
//   String message;
//   User user;
//   String token;

//   UserModel({
//     required this.message,
//     required this.user,
//     required this.token,
//   });

//   factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
//     message: json["message"],
//     user: json["name"],
//     token: json["token"],
//   );

//   Map<String, dynamic> toJson() => {
//     "message": message,
//     "name": user.toJson(),
//     "token": token,
//   };
// }

// class User {
//   String username;
//   String email;

//   User({
//     required this.username,
//     required this.email,
//   });

//   factory User.fromJson(Map<String, dynamic> json) => User(
//     username: json["name"],
//     email: json["email"],
//   );

//   Map<String, dynamic> toJson() => {
//     "name": username,
//     "email": email,
//   };
// }