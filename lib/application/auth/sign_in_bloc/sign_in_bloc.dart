import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(_Initial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
