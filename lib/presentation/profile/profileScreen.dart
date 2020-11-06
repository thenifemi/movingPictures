import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../domain/auth/app_user.dart';
import '../core/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  final TextTheme appTextTheme;
  final AppUser user;

  const ProfileScreen({
    Key key,
    this.appTextTheme,
    this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40.0),
          SignOutButton(appTextTheme: appTextTheme),
        ],
      ),
    );
  }
}

class SignOutButton extends StatelessWidget {
  final TextTheme appTextTheme;

  const SignOutButton({
    Key key,
    @required this.appTextTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: RaisedButton(
        padding: const EdgeInsets.all(8.0),
        onPressed: () {
          context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
        },
        color: AppColors.red,
        child: Text(
          "Sign out",
          style: TextStyle(
            fontFamily: appTextTheme.button.fontFamily,
            color: appTextTheme.button.color,
            fontWeight: appTextTheme.button.fontWeight,
            fontSize: appTextTheme.button.fontSize,
          ),
        ),
      ),
    );
  }
}
