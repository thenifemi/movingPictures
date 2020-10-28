import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          child: RaisedButton(
            color: Theme.of(context).buttonColor,
            onPressed: () {},
            child: Text(
              'Watch',
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
      ),
    );
  }
}
