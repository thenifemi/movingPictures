import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/auth_repository_interface.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthInterface _authInterface;

  @override
  AuthBloc(this._authInterface) : super(const _Initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authInterface.getSignedInUser();

        yield userOption.fold(
          () => const AuthState.unAuthenticated(),
          (_) => const AuthState.authenticated(),
        );
      },
      signedOut: (e) async* {
        await _authInterface.signOut();
        yield const AuthState.unAuthenticated();
      },
      storeGoogleUser: (e) async* {
        await _authInterface.storeGoogleUser();
      },
    );
  }
}
