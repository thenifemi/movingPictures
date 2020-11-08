import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../core/app_colors.dart';

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
          style: appTextTheme.button,
        ),
      ),
    );
  }
}
