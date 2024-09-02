import 'package:injectable/injectable.dart';

import '../../repositories/category_repository.dart';

@injectable
class GetCategoryListUseCase {
  final CategoryRepository categoryRepository;

  GetCategoryListUseCase({
    required this.categoryRepository,
  });

  Future<Map<String, dynamic>> call() async {
    final categoryList = await categoryRepository.getCategoryList();

    return categoryList;
  }
}
