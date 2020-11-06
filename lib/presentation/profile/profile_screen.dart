import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movingPictures/presentation/core/constants/language_constants.dart';

import '../../application/auth/auth_bloc.dart';
import '../../domain/auth/app_user.dart';
import '../core/app_colors.dart';
import '../core/component_widgets/cancel_button_widget.dart';

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
      appBar: AppBar(
        leading: const CancelButton(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: Image.network(
              user.photoURL,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            user.name,
            style: TextStyle(
              fontFamily: appTextTheme.headline5.fontFamily,
              color: appTextTheme.headline5.color,
              fontWeight: FontWeight.w700,
              fontSize: 40.0,
            ),
          ),
          Text(
            user.email,
            style: TextStyle(
              fontFamily: appTextTheme.headline5.fontFamily,
              color: appTextTheme.headline5.color,
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                signedInWithGoogle,
                style: TextStyle(
                  fontFamily: appTextTheme.headline5.fontFamily,
                  color: appTextTheme.headline5.color,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(width: 5.0),
              const Icon(
                Icons.verified,
                color: Colors.green,
              )
            ],
          ),
          const Spacer(),
          Center(child: SignOutButton(appTextTheme: appTextTheme)),
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
