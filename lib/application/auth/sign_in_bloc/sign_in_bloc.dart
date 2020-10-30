import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movingPictures/domain/auth/app_user.dart';
import 'package:movingPictures/domain/auth/app_user_data/app_user_data.dart';
import 'package:movingPictures/domain/auth/app_user_data/app_user_data_interface.dart';
import 'package:movingPictures/domain/auth/auth_failure.dart';
import 'package:movingPictures/domain/auth/auth_repository_interface.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthInterface _authInterface;

  SignInBloc(
    this._authInterface,
  ) : super(SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    yield* event.map(signInwithGooglePressed: (e) async* {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      final failureOrSuccess = await _authInterface.signInWithGoogle();

      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: some(failureOrSuccess),
      );

      // final userOption = await _authInterface.getSignedInUser();

      // yield userOption.fold(
      //   () => null,
      //   (appUser) {
      //     final AppUserData userData = AppUserData(
      //       id: appUser.id,
      //       name: appUser.name,
      //       email: appUser.email,
      //       photoUrl: appUser.photoUrl,
      //     );

      //   },
      // );
    });
  }
}
