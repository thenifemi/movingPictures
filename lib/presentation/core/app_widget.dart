import 'package:flutter/material.dart';
import 'package:movingPictures/presentation/core/constants.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
    );
  }
}
