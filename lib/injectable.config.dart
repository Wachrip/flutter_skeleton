// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'core/themes/light_mode.dart' as _i996;
import 'data/models/category_model.dart' as _i86;
import 'data/repositories/category_repository_impl.dart' as _i1032;
import 'domain/entities/category_entity.dart' as _i175;
import 'domain/repositories/category_repository.dart' as _i615;
import 'domain/usecases/category_usecases/add_category_usecase.dart' as _i858;
import 'domain/usecases/category_usecases/delete_category_usecase.dart' as _i88;
import 'domain/usecases/category_usecases/edit_category_usecase.dart' as _i893;
import 'domain/usecases/category_usecases/get_category_list_usecase.dart'
    as _i16;
import 'presentation/cubits/current_user/current_user_cubit.dart' as _i752;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i752.CurrentUserCubit>(() => _i752.CurrentUserCubit());
    gh.factory<_i996.LightModeTheme>(() => _i996.LightModeTheme());
    gh.factory<_i996.LightInputTheme>(() => _i996.LightInputTheme());
    gh.factory<_i615.CategoryRepository>(() => _i1032.CategoryRepositoryImpl());
    gh.factory<_i175.CategoryEntity>(() => _i86.CategoryModel(
          id: gh<String>(),
          name: gh<String>(),
        ));
    gh.factory<_i893.EditCategoryUseCase>(() => _i893.EditCategoryUseCase(
        categoryRepository: gh<_i615.CategoryRepository>()));
    gh.factory<_i88.DeleteCategoryUseCase>(() => _i88.DeleteCategoryUseCase(
        categoryRepository: gh<_i615.CategoryRepository>()));
    gh.factory<_i858.AddCategoryUseCase>(() => _i858.AddCategoryUseCase(
        categoryRepository: gh<_i615.CategoryRepository>()));
    gh.factory<_i16.GetCategoryListUseCase>(() => _i16.GetCategoryListUseCase(
        categoryRepository: gh<_i615.CategoryRepository>()));
    return this;
  }
}
