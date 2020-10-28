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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Heading",
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                "Title",
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                "body",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                "subtext",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                "regular text",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                "Button text",
                style: Theme.of(context).textTheme.button,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
