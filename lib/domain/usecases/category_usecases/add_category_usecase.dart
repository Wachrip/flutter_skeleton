import 'package:injectable/injectable.dart';

import '../../entities/category_entity.dart';
import '../../repositories/category_repository.dart';

@injectable
class AddCategoryUseCase {
  final CategoryRepository categoryRepository;

  AddCategoryUseCase({
    required this.categoryRepository,
  });

  Future<void> call({required CategoryEntity data}) async {
    await categoryRepository.addCategory(
      data,
    );
  }
}
