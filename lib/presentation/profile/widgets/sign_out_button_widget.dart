import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/constants/language_constants.dart';

class SignOutButton extends StatelessWidget {
  final TextTheme appTextTheme;
  final Function showDialog;

  const SignOutButton({
    Key key,
    @required this.appTextTheme,
    @required this.showDialog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: RaisedButton(
        padding: const EdgeInsets.all(8.0),
        onPressed: () => showDialog(),
        color: AppColors.red,
        child: Text(
          signOut,
          style: appTextTheme.button,
        ),
      ),
    );
  }
}
