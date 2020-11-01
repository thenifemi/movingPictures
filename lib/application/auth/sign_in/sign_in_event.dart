part of 'sign_in_bloc.dart';

@freezed
abstract class SignInEvent with _$SignInEvent {
  const factory SignInEvent.signInwithGooglePressed() = SignInWithGooglePressed;
}
