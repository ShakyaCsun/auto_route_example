part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginSubmitted({
    required String email,
    required String password,
  }) = _LoginSubmitted;
  const factory AuthEvent.logoutRequested() = _LogoutRequested;
}
