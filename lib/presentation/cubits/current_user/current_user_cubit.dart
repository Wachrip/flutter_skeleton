import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/user_entity.dart';

part 'current_user_cubit.freezed.dart';
part 'current_user_state.dart';

@injectable
class CurrentUserCubit extends Cubit<CurrentUserState> {
  CurrentUserCubit() : super(CurrentUserState.initial());

  Future<void> setCurrentUser(UserEntity currentUser) async {
    try {
      emit(CurrentUserState.loading());

      emit(CurrentUserState.success(currentUser));
    } catch (e) {
      emit(CurrentUserState.error('Error! $e'));
    }
  }
}
