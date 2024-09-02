import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class UserEntity {
  final String? id;
  final String name;
  final String lastName;
  final String email;
  final String password;
  final String userType;

  const UserEntity({
    this.id,
    required this.name,
    required this.lastName,
    required this.email,
    required this.password,
    required this.userType,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}
