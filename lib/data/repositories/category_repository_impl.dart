import 'package:injectable/injectable.dart';

import '../../domain/entities/category_entity.dart';
import '../../domain/repositories/category_repository.dart';

@Injectable(as: CategoryRepository)
class CategoryRepositoryImpl implements CategoryRepository {
  @override
  Future<void> addCategory(CategoryEntity data) async {
    // // TODO: implement addCategory
    // throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> getCategoryList() async {
    return {};
    // try {
    //   final categoryList = await firebaseDataSource.getData(
    //       CATEGORY_COLLECTION, CATEGORY_LIST_DOCUMENT);
    //
    //   return categoryList;
    // } catch (e) {
    //   print('error');
    //   throw Error();
    // }
  }

  @override
  Future<void> removeCategory(String key) async {
    // await firebaseDataSource.deleteDocumentField(
    //     CATEGORY_COLLECTION, CATEGORY_LIST_DOCUMENT, key);
  }

  @override
  Future<void> setCategory(String key, String data) async {
    // await firebaseDataSource.setDocumentField(
    //     CATEGORY_COLLECTION, CATEGORY_LIST_DOCUMENT, key, data);
  }
}
