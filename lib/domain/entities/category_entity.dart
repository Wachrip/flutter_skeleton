import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class CategoryEntity {
  final String? id;
  final String name;

  const CategoryEntity({
    this.id,
    required this.name,
  });

  factory CategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoryEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryEntityToJson(this);
}
