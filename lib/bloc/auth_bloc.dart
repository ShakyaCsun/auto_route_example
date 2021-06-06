import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.unauthenticated());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.when(
      loginSubmitted: (email, password) async* {
        if (email.contains('@') && password.length >= 6) {
          print('Yielded Authenticated');
          yield const AuthState.authenticated();
        }
      },
      logoutRequested: () async* {
        yield const AuthState.unauthenticated();
      },
    );
  }
}
