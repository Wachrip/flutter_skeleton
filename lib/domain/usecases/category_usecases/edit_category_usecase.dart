import 'package:injectable/injectable.dart';

import '../../repositories/category_repository.dart';

@injectable
class EditCategoryUseCase {
  final CategoryRepository categoryRepository;

  EditCategoryUseCase({required this.categoryRepository});

  Future<void> call({required String key, required String category}) async {
    await categoryRepository.setCategory(key, category);
  }
}
