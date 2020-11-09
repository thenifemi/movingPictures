import 'package:flutter/material.dart';
import 'package:movingPictures/application/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/auth/app_user.dart';
import '../core/app_colors.dart';
import '../core/component_widgets/cancel_button_widget.dart';
import '../core/constants/language_constants.dart';
import 'widgets/profile_info_block_widget.dart';
import 'widgets/sign_out_button_widget.dart';

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

    void _showDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: AppColors.gray,
            title: Text(
              "$signOut$questionMark",
              style: appTextTheme.bodyText1,
            ),
            content: Text(
              areYouSureYouWantToSignOut,
              style: appTextTheme.bodyText1,
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  cancel,
                  style: TextStyle(color: AppColors.white.withOpacity(0.5)),
                ),
              ),
              FlatButton(
                onPressed: () =>
                    context.bloc<AuthBloc>().add(const AuthEvent.signedOut()),
                child: const Text(
                  signOut,
                  style: TextStyle(color: AppColors.red),
                ),
              ),
            ],
          );
        },
      );
    }

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
            const Divider(color: AppColors.gray, height: 1.0),
            const SizedBox(height: 20.0),
            Center(
                child: SignOutButton(
                    appTextTheme: appTextTheme, showDialog: _showDialog)),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
