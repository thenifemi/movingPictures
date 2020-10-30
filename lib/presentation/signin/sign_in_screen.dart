import 'package:flutter/material.dart';

import 'widgets/sign_in_screen_widget.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SignInScreenWidget(),
    );
  }
}
