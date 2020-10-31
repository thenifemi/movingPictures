import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movingPictures/presentation/core/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: Center(
          child: Image.asset(
            movingPicturesLogoRed,
            width: 250.0,
          ),
        ),
      ),
    );
  }
}
