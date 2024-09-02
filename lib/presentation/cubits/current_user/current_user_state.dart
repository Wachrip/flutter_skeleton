part of 'current_user_cubit.dart';

@freezed
abstract class CurrentUserState with _$CurrentUserState {
  CurrentUserState._();

  factory CurrentUserState.initial() = _Initial;

  factory CurrentUserState.loading() = _Loading;

  factory CurrentUserState.error(String errorMessage) = _Error;

  factory CurrentUserState.success(UserEntity currentUser) = _Success;

  UserEntity get currentUser => when(
        initial: () => const UserEntity(
            name: '', lastName: '', email: '', password: 'phone', userType: ''),
        loading: () => const UserEntity(
            name: '', lastName: '', email: '', password: 'phone', userType: ''),
        success: (currentUser) => currentUser,
        error: (String errorMessage) => const UserEntity(
            name: '', lastName: '', email: '', password: 'phone', userType: ''),
      );
}
