import 'package:injectable/injectable.dart';

import '../../repositories/category_repository.dart';

@injectable
class DeleteCategoryUseCase {
  final CategoryRepository categoryRepository;

  DeleteCategoryUseCase({required this.categoryRepository});

  Future<void> call(String key) async {
    await categoryRepository.removeCategory(key);
  }
}
