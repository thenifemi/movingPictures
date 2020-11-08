import 'package:flutter/material.dart';

import '../../domain/auth/app_user.dart';
import '../core/app_colors.dart';
import '../core/component_widgets/cancel_button_widget.dart';
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
