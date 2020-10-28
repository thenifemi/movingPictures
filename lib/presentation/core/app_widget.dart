import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movingPictures/presentation/core/theme.dart';

import '../routes/router.gr.dart';
import 'constants.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      builder: ExtendedNavigator.builder(
        router: AppRouter(),
      ),
    );
  }
}
