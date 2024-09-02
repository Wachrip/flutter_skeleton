import '../entities/category_entity.dart';

abstract class CategoryRepository {
  Future<void> addCategory(
    CategoryEntity data,
  );

  Future<Map<String, dynamic>> getCategoryList();

  Future<void> setCategory(
    String id,
    String data,
  );

  Future<void> removeCategory(
    String id,
  );
}
