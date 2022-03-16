import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';


part 'user_model.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class UserModel {
  @JsonKey(name: "_id")
  String? id;
  String? first_name;
  String? last_name;
  String? email;
  String? password;
  String? old_password;
  String? new_password;
  String? confirm_password;
  String? name;
  String? country_code;
  String? phone;
  String? role;
  String? device_token;
  String? device_type;
  String? otp;
  DateTime? createdAt;
  String? social_type;
  String? social_id;

  String? access_token;

  bool? is_phone_verified;
  bool? is_email_verified;
  String? is_otp_verified;
  String? location;
  double? latitude;
  double? longitude;
  List<double>? geometry;
  //ImageModel? image;

  UserModel(
      {this.id,
        this.first_name,
        this.last_name,
        this.email,
        this.password,
        this.new_password,
        this.old_password,
        this.confirm_password,
        this.name,
        this.country_code,
        this.phone,
        this.role,
        this.device_token,
        this.device_type,
        this.access_token,
        this.otp,
        this.createdAt,
        this.social_type,
        this.social_id,
        this.is_email_verified,
        this.is_phone_verified,
        this.is_otp_verified,
        this.location,
        this.latitude,
        this.longitude,
      //  this.image,
        this.geometry});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
