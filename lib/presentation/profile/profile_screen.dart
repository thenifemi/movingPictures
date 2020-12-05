import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../application/auth/auth_bloc.dart';
import '../../domain/auth/app_user.dart';
import '../core/app_colors.dart';
import '../core/app_localizations.dart';
import '../core/component_widgets/cancel_button_widget.dart';
import '../core/component_widgets/primary_button_widget.dart';
import '../core/constants/constants.dart';
import '../core/constants/language_constants.dart';
import '../routes/router.gr.dart';
import 'widgets/github_block.dart';
import 'widgets/profile_info_block_widget.dart';
import 'widgets/tmdb_block.dart';

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
    final lang = AppLocalizations.of(context);

    void _showDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: AppColors.gray,
            title: Text(
              "${lang.translate(signOut)} ?",
              style: appTextTheme.headline6,
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  lang.translate(cancel),
                  style: TextStyle(color: AppColors.white.withOpacity(0.5)),
                ),
              ),
              FlatButton(
                onPressed: () =>
                    context.read<AuthBloc>().add(const AuthEvent.signedOut()),
                child: Text(
                  lang.translate(signOut),
                  style: const TextStyle(color: AppColors.red),
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

            //?
            ListTile(
              onTap: () => ExtendedNavigator.of(context)
                  .pushFavorites(automaticallyImplyLeading: true),
              leading: SvgPicture.asset(
                favoriteFilledIcon,
                color: AppColors.white,
              ),
              title: Text(lang.translate(favorites),
                  style: appTextTheme.bodyText1),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.white,
                size: 10.0,
              ),
            ),

            const Divider(color: AppColors.gray, height: 1.0),
            //?
            const Spacer(),
            const Divider(color: AppColors.gray, height: 1.0),
            const SizedBox(height: 20.0),
            TmdbBlock(appTextTheme: appTextTheme),
            const SizedBox(height: 20.0),
            const Divider(color: AppColors.gray, height: 1.0),

            //?
            const SizedBox(height: 20.0),
            GitHubBlock(appTextTheme: appTextTheme),
            const SizedBox(height: 20.0),

            //?
            const Divider(color: AppColors.gray, height: 1.0),
            const SizedBox(height: 20.0),
            Center(
              child: PrimaryButton(
                appTextTheme: appTextTheme,
                name: lang.translate(signOut),
                color: AppColors.red,
                onpressed: _showDialog,
                isFullButton: false,
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
