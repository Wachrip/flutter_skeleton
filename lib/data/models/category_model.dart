import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/category_entity.dart';

part 'category_model.g.dart';

@Injectable(as: CategoryEntity)
@JsonSerializable(createToJson: true)
class CategoryModel extends CategoryEntity {
  const CategoryModel({
    super.id,
    required super.name,
  });

  @override
  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
