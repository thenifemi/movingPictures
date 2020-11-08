import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../domain/auth/app_user.dart';
import '../core/app_colors.dart';
import '../core/component_widgets/cancel_button_widget.dart';
import '../core/constants/language_constants.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileInfoBlock(user: user, appTextTheme: appTextTheme),
            const SizedBox(height: 20.0),
            const Divider(color: AppColors.gray, height: 1.0),
            const Spacer(),
            Center(child: SignOutButton(appTextTheme: appTextTheme)),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}

class ProfileInfoBlock extends StatelessWidget {
  const ProfileInfoBlock({
    Key key,
    @required this.user,
    @required this.appTextTheme,
  }) : super(key: key);

  final AppUser user;
  final TextTheme appTextTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          SizedBox(
            height: 60.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Image.network(
                user.photoURL,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style: appTextTheme.bodyText1,
              ),
              Text(
                user.email,
                style: appTextTheme.headline6,
              ),
              const SizedBox(height: 8.0),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: AppColors.gray,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      signedInWithGoogle,
                      style: appTextTheme.subtitle2,
                    ),
                    const SizedBox(width: 5.0),
                    const Icon(
                      Icons.verified,
                      color: Colors.green,
                      size: 16.0,
                    )
                  ],
                ),
              ),
            ],
          )
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
          style: appTextTheme.button,
        ),
      ),
    );
  }
}
